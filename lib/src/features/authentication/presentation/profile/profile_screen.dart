import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateChangesProvider);
    return authState.maybeWhen(
      data: (user) {
        return user != null ? const AccountScreen() : const LoginScreen();
      },
      error: (error, stackTrace) {
        return CustomErrorWidget(errorMessage: 'errorMessage $error');
      },
      orElse: () {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Profile',
              style: textThemeUtil(context)
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(height: 1.5, color: MyColors.lineLight),
            ),
          ),
          body: const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
