import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class FormLogin extends ConsumerStatefulWidget {
  const FormLogin({super.key});

  @override
  ConsumerState<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends ConsumerState<FormLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _resetPasswordController =
      TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _resetPasswordFocusNode = FocusNode();

  bool _obsecurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _resetPasswordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _resetPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(formLoginControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextFormField(
          controller: _emailController,
          focusNode: _emailFocusNode,
          label: 'Email',
          hintText: 'example@example.com',
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => _passwordFocusNode.requestFocus(),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Please input email address.';
            }
            return Validators.email(value) ? null : 'Invalid email';
          },
        ),
        // Password Input Field
        CustomTextFormField(
          controller: _passwordController,
          focusNode: _passwordFocusNode,
          label: 'Password',
          hintText: '******',
          keyboardType: TextInputType.visiblePassword,
          onEditingComplete: () => _passwordFocusNode.unfocus(),
          obscureText: _obsecurePassword,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obsecurePassword = !_obsecurePassword;
              });
            },
            icon: _obsecurePassword
                ? SvgPicture.asset('assets/svg/eye.svg')
                : SvgPicture.asset('assets/svg/eye_slash.svg'),
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Please input password.';
            }
            return null;
          },
        ),
        const SizedBox(height: 24),
        // Button Continue/Sign In
        ElevatedButton(
          onPressed: state.isLoading
              ? null
              : () {
                  ref.read(emailFieldProvider.notifier).state =
                      _emailController.text;
                  ref.read(passwordFieldProvider.notifier).state =
                      _passwordController.text;
                  ref.read(formLoginControllerProvider.notifier).signIn();
                },
          child: state.isLoading
              ? const CircularProgressIndicator()
              : Text('Continue'),
        ),
        const SizedBox(height: 12),
        // Button Forgot Password
        TextButton(
          onPressed: () {
            _forgotPasswordDialogBuilder(context, state);
            _resetPasswordFocusNode.requestFocus();
          },
          child: Text(
            'Forgot Password?',
            style: textThemeUtil(context).bodyMedium?.copyWith(
                color: MyColors.primary, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  void _forgotPasswordDialogBuilder(
      BuildContext context, AsyncValue<void> state) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Forgot Password'),
          content: CustomTextFormField(
            controller: _resetPasswordController,
            focusNode: _resetPasswordFocusNode,
            label: 'Email',
            hintText: 'example@example.com',
            keyboardType: TextInputType.emailAddress,
            onEditingComplete: () => _resetPasswordFocusNode.unfocus(),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please input email address.';
              }
              return Validators.email(value) ? null : 'Invalid email';
            },
          ),
          actions: [
            SizedBox(
              width: double.infinity,
              child: Expanded(
                child: ElevatedButton(
                  onPressed: state.isLoading
                      ? null
                      : () {
                          ref
                              .read(formLoginControllerProvider.notifier)
                              .resetPassword(_resetPasswordController.text);
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Link reset password sent to \n${_resetPasswordController.text}'),
                            ),
                          );
                        },
                  child: state.isLoading
                      ? Center(child: CircularProgressIndicator())
                      : Text('Request Link Recovery'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
