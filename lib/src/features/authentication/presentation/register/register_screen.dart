import 'package:movie_vault/src/commons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SelectionArea(
      onSelectionChanged: (value) => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: CenterTitleAppBar('Sign Up'),
          automaticallyImplyLeading: false,
          toolbarHeight: width > 600 ? 30 : null,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // trigger scroll behavior in blank space
                  const SizedBox(width: double.infinity),
                  // Field Section
                  const SizedBox(
                    width: 500,
                    child: FormRegister(),
                  ),
                  // Sign In option
                  SizedBox(
                    width: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account.',
                          style: textThemeUtil(context).bodyMedium,
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(
                            'Sign In',
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
        ),
      ),
    );
  }
}
