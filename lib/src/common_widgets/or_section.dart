import 'package:movie_vault/src/commons.dart';

class OrSection extends StatelessWidget {
  const OrSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Divider(
              thickness: 1,
              color: MyColors.lineLight,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            'or',
            style: textThemeUtil(context)
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 12),
          const Flexible(
            child: Divider(
              thickness: 1,
              color: MyColors.lineLight,
            ),
          ),
        ],
      ),
    );
  }
}
