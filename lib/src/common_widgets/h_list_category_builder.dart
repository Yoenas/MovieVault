import 'package:movie_vault/src/commons.dart';

class HListCategoryBuilder extends StatefulWidget {
  const HListCategoryBuilder({
    super.key,
    required this.listCategory,
    required this.onTapCategory,
    this.currentIndex,
  });

  final List<String> listCategory;
  final void Function(int index) onTapCategory;
  final int? currentIndex;

  @override
  State<HListCategoryBuilder> createState() => _CategoriesMovieState();
}

class _CategoriesMovieState extends State<HListCategoryBuilder> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    int? currentIndex = widget.currentIndex;
    return Container(
      height: 65,
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount:
              (widget.listCategory.isNotEmpty) ? widget.listCategory.length : 0,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 55,
              child: InkWell(
                onTap: () {
                  widget.onTapCategory(index);
                  setState(() {
                    currentIndex = index;
                    _currentIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: currentIndex != null
                          // currentIndex for search category
                          ? (currentIndex == index)
                              ? MyColors.primary
                              : Theme.of(context).colorScheme.surface
                          // _currentIndex for See All Category
                          : (_currentIndex == index)
                              ? MyColors.primary
                              : Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    widget.listCategory[index],
                    style: textThemeUtil(context).bodyMedium?.copyWith(
                          color: currentIndex != null
                              // currentIndex for search category
                              ? (currentIndex == index)
                                  ? MyColors.white
                                  : MyColors.black
                              // _currentIndex for See All Category
                              : (_currentIndex == index)
                                  ? MyColors.white
                                  : MyColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
