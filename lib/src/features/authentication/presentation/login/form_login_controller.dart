import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/user_providers.dart';
import '../../data/auth_repository.dart';

part 'form_login_controller.g.dart';

@riverpod
class FormLoginController extends _$FormLoginController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<void> signIn() async {
    final authRepository = ref.read(authRepositoryProvider);
    final email = ref.read(emailFieldProvider);
    final password = ref.read(passwordFieldProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() {
      return authRepository.signIn(
        email: email,
        password: password,
      );
    });
  }

  Future<void> resetPassword(String email) async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() {
      return authRepository.resetPassword(email: email);
    });
  }
}
