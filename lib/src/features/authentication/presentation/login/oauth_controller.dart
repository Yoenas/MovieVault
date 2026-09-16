import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/auth_repository.dart';

part 'oauth_controller.g.dart';

@riverpod
class OAuthController extends _$OAuthController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<void> signInWithGoogle() async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncValue.loading();
    final newState = await AsyncValue.guard(() {
      return authRepository.signInWithGoogle();
    });
    if (ref.mounted) {
      state = newState;
    }
  }
}
