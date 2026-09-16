import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/auth_repository.dart';

part 'link_provider_controller.g.dart';

@riverpod
class LinkProviderController extends _$LinkProviderController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<void> linkPassword(String email, String password) async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncValue.loading();
    final newState = await AsyncValue.guard(() {
      return authRepository.linkEmailPassword(email: email, password: password);
    });
    if (ref.mounted) {
      state = newState;
    }
  }

  Future<void> linkGoogle() async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncValue.loading();
    final newState = await AsyncValue.guard(() {
      return authRepository.linkWithGoogle();
    });
    if (ref.mounted) {
      state = newState;
    }
  }
}
