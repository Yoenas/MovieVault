import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_vault/src/features/authentication/domain/user_response.dart';

import '../domain/user_data.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firebaseFireStore = FirebaseFirestore.instance;
  final _googleSignIn = GoogleSignIn.instance;

  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();
  Stream<User?> userChanges() => _firebaseAuth.userChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  Future<void> _saveUserProfile(String uid, UserData user) async {
    await _firebaseFireStore.collection('users').doc(uid).set(user.toMap());
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

  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount googleUser =
          await _googleSignIn.authenticate();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      final userData = UserData(
        email: googleUser.email,
        username: googleUser.email.split('@').first,
        name: googleUser.displayName ?? "",
        birthday: '',
        imageUrl: googleUser.photoUrl ?? "",
      );
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      await _saveUserProfile(userCredential.user!.uid, userData);

      // Once signed in, return the UserCredential
      return userCredential;
    } on GoogleSignInException catch (e) {
      // User canceled the sign-in flow
      if (e.code == GoogleSignInExceptionCode.canceled) {
        return null;
      }
      rethrow;
    }
  }

  Future<void> signOut() {
    _googleSignIn.signOut();
    return _firebaseAuth.signOut();
  }

  Future<void> deleteAccount() async {
    if (currentUser == null) {
      throw FirebaseAuthException(
        code: "no-current-user",
        message: "No user is currently signed in.",
      );
    }

    await _firebaseFireStore.collection('users').doc(currentUser?.uid).delete();

    await currentUser?.delete();
  }

  Future<UserData> getUserProfile() async {
    final user = await _firebaseFireStore
        .collection('users')
        .doc(currentUser!.uid)
        .get();
    final response = UserResponse.fromJson(user.data()!);
    return UserData.from(response);
  }

  Future<void> resetPassword({required String email}) {
    return _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  /// Links an email/password credential to the current user.
  /// Used when a Google-only user wants to also log in with email/password.
  Future<void> linkEmailPassword({required String email, required String password}) async {
    final user = currentUser;
    if (user == null) {
      throw FirebaseAuthException(
        code: 'no-current-user',
        message: 'No user is currently signed in.',
      );
    }

    final credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );
    await user.linkWithCredential(credential);
  }

  /// Links a Google credential to the current user.
  /// Used when an email/password user wants to also sign in with Google.
  Future<void> linkWithGoogle() async {
    final user = currentUser;
    if (user == null) {
      throw FirebaseAuthException(
        code: 'no-current-user',
        message: 'No user is currently signed in.',
      );
    }

    final GoogleSignInAccount googleUser = await _googleSignIn.authenticate();
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );
    await user.linkWithCredential(credential);
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

final userChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.userChanges();
});

final hasPasswordProvider = Provider.autoDispose<bool>((ref) {
  final user = ref.watch(userChangesProvider).value;
  return user?.providerData.any((info) => info.providerId == 'password') ?? false;
});

final hasGoogleProvider = Provider.autoDispose<bool>((ref) {
  final user = ref.watch(userChangesProvider).value;
  return user?.providerData.any((info) => info.providerId == 'google.com') ?? false;
});
