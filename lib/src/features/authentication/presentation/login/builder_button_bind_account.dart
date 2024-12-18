import 'package:movie_vault/src/commons.dart';

class BuilderButtonBindAccount extends StatelessWidget {
  const BuilderButtonBindAccount(
      {super.key,
      required this.svgIcon,
      required this.accountType,
      required this.onClick});

  final String svgIcon;
  final String accountType;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onClick,
      label: Text(
        'Continue With $accountType',
      ),
      icon: SvgPicture.asset(svgIcon),
    );
  }
}
