import 'package:movie_vault/src/features/authentication/domain/user_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/auth_repository.dart';

part 'account_screen_controller.g.dart';

@riverpod
class AccountScreenController extends _$AccountScreenController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<void> signOut() async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(authRepository.signOut);
  }
}

final userProfileProvider = FutureProvider.autoDispose<UserData>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  return authRepository.getUserProfile();
});
