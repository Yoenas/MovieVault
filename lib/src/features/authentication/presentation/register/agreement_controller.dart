import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/user_providers.dart';
import '../../data/auth_repository.dart';

part 'agreement_controller.g.dart';

@riverpod
class AgreementController extends _$AgreementController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<void> register() async {
    final authRepository = ref.read(authRepositoryProvider);
    final email = ref.read(emailFieldProvider);
    final password = ref.read(passwordFieldProvider);
    final userData = ref.read(userDataRegisterProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() {
      return authRepository.register(
        email: email,
        password: password,
        user: userData,
      );
    });
  }
}
