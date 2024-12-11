import 'package:movie_vault/src/commons.dart';

class BindAccount extends StatefulWidget {
  const BindAccount({super.key});

  @override
  State<BindAccount> createState() => _BindAccountState();
}

class _BindAccountState extends State<BindAccount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BuilderButtonBindAccount(
          accountType: 'Google',
          svgIcon: 'assets/svg/auth/google.svg',
          onClick: () {},
        ),
        const SizedBox(height: 16),
        // Sign In Button With Apple
        BuilderButtonBindAccount(
          accountType: 'Apple',
          svgIcon: 'assets/svg/auth/apple.svg',
          onClick: () {},
        ),
        const SizedBox(height: 16),
        // Sign In Button With Facebook
        BuilderButtonBindAccount(
          accountType: 'Facebook',
          svgIcon: 'assets/svg/auth/facebook.svg',
          onClick: () {},
        ),
      ],
    );
  }
}
