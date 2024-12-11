import '../commons.dart';

class RowSeeAll extends StatelessWidget {
  const RowSeeAll({super.key, required this.titleList, required this.onSeeAll});
  final String titleList;
  final void Function() onSeeAll;

  @override
  Widget build(BuildContext context) {
    return // title - see all
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // name of list movies
        Text(
          titleList,
          style: textThemeUtil(context)
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        // button see all
        TextButton(
          onPressed: onSeeAll,
          child: Text(
            'See All',
            style: textThemeUtil(context)
                .bodyLarge
                ?.copyWith(color: MyColors.primary),
          ),
        ),
      ],
    );
  }
}
