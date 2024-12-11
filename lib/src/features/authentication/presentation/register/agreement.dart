import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class Agreement extends ConsumerStatefulWidget {
  const Agreement({
    super.key,
    required this.onAgree,
  });
  final void Function() onAgree;

  @override
  ConsumerState<Agreement> createState() => _AgreementState();
}

class _AgreementState extends ConsumerState<Agreement> {
  var _isAgree = false;
  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      agreementControllerProvider,
      (_, state) {
        if (!state.isLoading && state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.toString())),
          );
        }
      },
    );
    final isFormValid = ref.watch(formValidProvider);
    final state = ref.watch(agreementControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Text Agreement
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                widget.onAgree();
                setState(() {
                  _isAgree = !_isAgree;
                });
              },
              icon: Icon(_isAgree
                  ? Icons.check_circle_rounded
                  : Icons.circle_outlined),
              color: _isAgree ? MyColors.primary : MyColors.lineLight,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  widget.onAgree();
                  setState(() {
                    _isAgree = !_isAgree;
                  });
                },
                child: RichText(
                  text: TextSpan(
                    text:
                        'By click the agree and continue button, you\'re agree to MovieVault\'s ',
                    style: textThemeUtil(context)
                        .bodySmall
                        ?.copyWith(color: MyColors.greyScale70),
                    children: [
                      TextSpan(
                        text: 'Terms and Services ',
                        style: textThemeUtil(context).bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: MyColors.greyScale100),
                      ),
                      TextSpan(
                        text: 'and acknowledge the ',
                        style: textThemeUtil(context)
                            .bodySmall
                            ?.copyWith(color: MyColors.greyScale70),
                      ),
                      TextSpan(
                        text: 'Privacy and Policy.',
                        style: textThemeUtil(context).bodySmall?.copyWith(
                              color: MyColors.greyScale100,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Button Agree and Continue
        ElevatedButton(
          onPressed: () {
            if (_isAgree && isFormValid && !state.isLoading) {
              ref.read(agreementControllerProvider.notifier).register();
              Navigator.of(context).pop();
            } else {
              null;
            }
          },
          style: (_isAgree && isFormValid)
              ? Theme.of(context).elevatedButtonTheme.style
              : kDisableElevatedButton,
          child: state.isLoading
              ? const CircularProgressIndicator()
              : const Text('Agree and Continue'),
        ),
      ],
    );
  }
}
