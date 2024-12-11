import 'package:movie_vault/src/commons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          style: textThemeUtil(context)
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: width > 600 ? 30 : null,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // trigger scroll behavior in blank space
              const SizedBox(width: double.infinity),
              // Form Login Email & Password
              const SizedBox(
                width: 500,
                child: FormLogin(),
              ),
              // --or-- Section
              // const SizedBox(height: 16),
              // const OrSection(),
              // const SizedBox(height: 32),
              // // Sign In With Account Google/Apple/Facebook
              // const SizedBox(
              //   width: 500,
              //   child: BindAccount(),
              // ),
              // Sign Up Button Option
              SizedBox(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have account?',
                      style: textThemeUtil(context).bodyMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        navigatePushTo(context,
                            destination: const RegisterScreen());
                      },
                      child: Text(
                        'Sign Up',
                        style: textThemeUtil(context)
                            .bodyMedium
                            ?.copyWith(color: MyColors.primary),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
