import 'package:movie_vault/src/commons.dart';

class InfoSectionBuilder extends StatelessWidget {
  const InfoSectionBuilder({
    super.key,
    required this.infoName,
    required this.infoUser,
    this.svgPathIcon,
  });
  final String infoName;
  final String infoUser;
  final String? svgPathIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          infoName,
          style: textThemeUtil(context)
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        // row email
        Row(
          children: [
            (svgPathIcon == null || svgPathIcon!.trim().isEmpty)
                ? SizedBox.shrink() // no icon info section
                : SvgPicture.asset(
                    svgPathIcon!,
                    height: 30,
                    width: 30,
                  ),
            const SizedBox(width: 8),
            Text(
              infoUser,
              style: textThemeUtil(context).bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
