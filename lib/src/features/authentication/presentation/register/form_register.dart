import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class FormRegister extends ConsumerStatefulWidget {
  const FormRegister({super.key});

  @override
  ConsumerState<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends ConsumerState<FormRegister> {
  final _formKey = GlobalKey<FormState>();

  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());

  bool _passwordObsecure = true;
  bool _confirmPasswordObsecure = true;

  bool _isEmailAvailable = true;
  bool _isUsernameAvailable = true;

  final _birthdayMaskFormatter = MaskTextInputFormatter(
      mask: '##-##-####',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  List<dynamic> listUsers = [];

  @override
  void initState() {
    super.initState();
    _focusNodes[0].requestFocus();
  }

  @override
  void dispose() {
    for (final focus in _focusNodes) {
      focus.dispose();
    }
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _submitForm() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      ref.read(formValidProvider.notifier).state = isValid;
      return;
    }

    ref.read(formValidProvider.notifier).state = isValid;
    log('${ref.watch(formValidProvider)}');
    // email text provider
    ref.read(emailFieldProvider.notifier).state = _controllers[0].text;
    // password text provider
    ref.read(passwordFieldProvider.notifier).state = _controllers[5].text;
    final userData = UserData(
      email: _controllers[0].text,
      username: _controllers[1].text,
      name: _controllers[2].text,
      birthday: _controllers[3].text,
    );
    ref.read(userDataRegisterProvider.notifier).state = userData;
  }

  Widget _buildPasswordField({
    required int index,
    required String label,
    required bool obscureText,
    required VoidCallback toggleVisibility,
  }) {
    return CustomTextFormField(
      controller: _controllers[index],
      focusNode: _focusNodes[index],
      label: label,
      obscureText: obscureText,
      hintText: '******',
      keyboardType: TextInputType.visiblePassword,
      onEditingComplete: () {
        if (index == 4) {
          _focusNodes[5].requestFocus();
        } else {
          _focusNodes[5].unfocus();
          _submitForm();
        }
      },
      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: obscureText
            ? SvgPicture.asset('assets/svg/eye.svg')
            : SvgPicture.asset('assets/svg/eye_slash.svg'),
      ),
      validator: (value) => _validatePassword(value, index == 5),
    );
  }

  String? _validatePassword(String? value, bool isConfirm) {
    if (value == null || value.isEmpty) return 'Please input password.';
    if (!Validators.passwordUpperCase(value)) {
      return 'Should contain at least 1 UPPERCASE character';
    }
    if (!Validators.passwordLowerCase(value)) {
      return 'Should contain at least 1 lowercase character';
    }
    if (!Validators.passwordNumber(value)) {
      return 'Should contain at least 1 number 0-9';
    }
    if (!Validators.passwordSpecialCharacter(value)) {
      return 'Should contain at least 1 Special Character !@#\\\$&*~';
    }
    if (value.length < 6) return 'Must be at least 6 character in length';
    // only appear in confirm password field
    if (isConfirm && value != _controllers[4].text) {
      return 'Passwords don\'t match';
    }
    return null;
  }

  void _checkEmailIsAvailable(List<dynamic> listUsers) {
    final listUsedEmail = listUsers.map((x) => x['email']).toList();
    log('users: $listUsedEmail');
    final emailAlreadyUsed = listUsedEmail.contains(_controllers[0].text);
    setState(() {
      emailAlreadyUsed ? _isEmailAvailable = false : _isEmailAvailable = true;
    });
  }

  void _checkUsernameIsAvailable(List<dynamic> listUsers) {
    final listUsedUsername = listUsers.map((user) => user['username']).toList();
    final usernameAlreadyUsed = listUsedUsername.contains(_controllers[1].text);
    setState(() {
      usernameAlreadyUsed
          ? _isUsernameAvailable = false
          : _isUsernameAvailable = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(usersCollectionProvider).whenData((value) {
      listUsers = value.docs.map((user) => user.data()).toList();
      log('users: $listUsers');
    });

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Email
          CustomTextFormField(
            controller: _controllers[0],
            focusNode: _focusNodes[0],
            label: 'Email',
            hintText: 'example@example.com',
            keyboardType: TextInputType.emailAddress,
            suffixIcon: _isEmailAvailable
                ? SizedBox.shrink()
                : Icon(
                    Icons.error,
                    color: MyColors.error,
                  ),
            onEditingComplete: () {
              _checkEmailIsAvailable(listUsers);
              _focusNodes[1].requestFocus();
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please input email address.';
              }
              if (!_isEmailAvailable) {
                return 'Email already used';
              }
              return Validators.email(value) ? null : 'Invalid email';
            },
          ),
          // Username
          CustomTextFormField(
            controller: _controllers[1],
            focusNode: _focusNodes[1],
            label: 'Username',
            hintText: 'example',
            keyboardType: TextInputType.text,
            suffixIcon: _isUsernameAvailable
                ? SizedBox.shrink()
                : Icon(
                    Icons.error,
                    color: MyColors.error,
                  ),
            onEditingComplete: () {
              _checkUsernameIsAvailable(listUsers);
              _focusNodes[2].requestFocus();
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please input username.';
              }
              if (!_isUsernameAvailable) {
                return 'Username already used';
              }
              if (value.length < 2) return 'At least have 2 characters';
              if (Validators.usernameUpperCase(value)) {
                return 'Username cannot have UPPERCASE character';
              }
              return Validators.username(value)
                  ? null
                  : 'Username cannot have space';
            },
          ),
          // Name
          CustomTextFormField(
            controller: _controllers[2],
            focusNode: _focusNodes[2],
            label: 'Name',
            hintText: 'Example Fullname',
            keyboardType: TextInputType.text,
            onEditingComplete: () {
              _focusNodes[3].requestFocus();
            },
            validator: (value) {
              return (value == null || value.trim().isEmpty)
                  ? 'Please input fullname.'
                  : null;
            },
          ),
          // Birthday
          CustomTextFormField(
            controller: _controllers[3],
            focusNode: _focusNodes[3],
            label: 'Birthday',
            hintText: '17-08-1999 (day-month-year)',
            keyboardType: TextInputType.datetime,
            inputFormatters: [_birthdayMaskFormatter],
            onEditingComplete: () {
              _focusNodes[4].requestFocus();
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please input birthday.';
              }
              if (value.length < 10) return 'Invalid Birthday';
              if (!Validators.birthday(value)) return 'Invalid Birthday';
              if (!Validators.age(value)) {
                return 'Age should in between 8 - 75 yeas old.';
              }
              return null;
            },
          ),
          // Password
          _buildPasswordField(
            index: 4,
            label: 'Password',
            obscureText: _passwordObsecure,
            toggleVisibility: () => setState(() {
              _passwordObsecure = !_passwordObsecure;
            }),
          ),
          // Confirm Password
          _buildPasswordField(
            index: 5,
            label: 'Confirm Password',
            obscureText: _confirmPasswordObsecure,
            toggleVisibility: () => setState(() {
              _confirmPasswordObsecure = !_confirmPasswordObsecure;
            }),
          ),
          const SizedBox(height: 12),
          Text(
            'Password must be at least 6 characters, should contains 1 UPPERCASE, 1 lowercase, 1 number (0-9) and 1 special character !@#\\\$&*~',
            style: textThemeUtil(context).bodySmall,
          ),
          const SizedBox(height: 32),
          // agree & continue button
          Agreement(
            onAgree: () {
              _checkEmailIsAvailable(listUsers);
              _checkUsernameIsAvailable(listUsers);
              _submitForm();
            },
          ),
        ],
      ),
    );
  }
}
