import 'package:movie_vault/src/commons.dart';

class TabBarBuilder extends StatelessWidget {
  const TabBarBuilder({
    super.key,
    required this.tabItems,
    this.tabController,
    this.onTap,
  });

  final TabController? tabController;
  final List<Widget> tabItems;
  final void Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: TabBar(
        controller: tabController,
        labelColor: MyColors.primary,
        labelPadding: const EdgeInsets.only(bottom: 12, top: 12),
        labelStyle:
            GoogleFonts.mulish(fontSize: 18, fontWeight: FontWeight.bold),
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: MyColors.primary,
        unselectedLabelColor: MyColors.greyScale40,
        tabs: tabItems,
        onTap: (value) => onTap,
      ),
    );
  }
}
