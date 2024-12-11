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
  //  Scaffold(
  //   appBar: _profileAppBar(context),
  //   body: Padding(
  //     padding: const EdgeInsets.all(16.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         SizedBox(
  //           width: 500,
  //           child: ElevatedButton(
  //             onPressed: () {
  //               navigatePushTo(context,
  //                   destination: const LoginScreen());
  //             },
  //             style: Theme.of(context).elevatedButtonTheme.style,
  //             child: Text('Sign In'),
  //           ),
  //         ),
  //         const SizedBox(height: 16),
  //         const OrSection(),
  //         const SizedBox(height: 16),
  //         SizedBox(
  //           width: 500,
  //           child: OutlinedButton(
  //             onPressed: () {
  //               navigatePushTo(context,
  //                   destination: const RegisterScreen());
  //             },
  //             child: Text('Create an Account'),
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  // );
}
