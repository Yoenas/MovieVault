import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/features/authentication/domain/user_response.dart';

import '../domain/user_data.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firebaseFireStore = FirebaseFirestore.instance;

  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  void _saveUserProfile(String uid, UserData user) {
    _firebaseFireStore.collection('users').doc(uid).set(user.toMap());
  }

  Future<void> register({
    required String email,
    required String password,
    required UserData user,
  }) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return _saveUserProfile(userCredential.user!.uid, user);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> watchUsersCollection() {
    return _firebaseFireStore.collection('users').snapshots();
  }

  Future<void> signIn({required String email, required String password}) {
    return _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<UserData> getUserProfile() async {
    final user = await _firebaseFireStore
        .collection('users')
        .doc(currentUser!.uid)
        .get();
    final response = UserResponse.fromJson(user.data()!);
    return UserData.from(response);
  }

  Future<void> resetPassword({required email}) {
    return _firebaseAuth.sendPasswordResetEmail(email: email);
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});

final authStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
});

final usersCollectionProvider =
    StreamProvider.autoDispose<QuerySnapshot<Map<String, dynamic>>>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.watchUsersCollection();
});
