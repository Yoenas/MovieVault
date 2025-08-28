import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';
import 'package:movie_vault/src/features/authentication/presentation/login/oauth_controller.dart';

class LoginSSO extends ConsumerWidget {
  const LoginSSO({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BuilderButtonOAuth(
          accountType: 'Google',
          svgIcon: 'assets/svg/auth/google.svg',
          onClick: () {
            ref.read(oAuthControllerProvider.notifier).signInWithGoogle();
          },
        ),
        // const SizedBox(height: 16),
        // // Sign In Button With Apple
        // BuilderButtonBindAccount(
        //   accountType: 'Apple',
        //   svgIcon: 'assets/svg/auth/apple.svg',
        //   onClick: () {},
        // ),
        // const SizedBox(height: 16),
        // // Sign In Button With Facebook
        // BuilderButtonBindAccount(
        //   accountType: 'Facebook',
        //   svgIcon: 'assets/svg/auth/facebook.svg',
        //   onClick: () {},
        // ),
      ],
    );
  }
}
