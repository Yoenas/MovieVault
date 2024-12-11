import 'package:movie_vault/src/commons.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.label,
    required this.hintText,
    required this.keyboardType,
    required this.onEditingComplete,
    required this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final void Function() onEditingComplete;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 12),
      child: TextFormField(
        // start static here
        textInputAction: TextInputAction.next,
        autovalidateMode: AutovalidateMode.onUnfocus,
        style: textThemeUtil(context)
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(width: 1, color: MyColors.lineLight),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          // end static here
          hintStyle: mHintStyle,
          hintText: hintText,
          labelText: label,
          suffixIcon: suffixIcon,
        ),
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        onEditingComplete: onEditingComplete,
        validator: validator,
      ),
    );
  }
}
