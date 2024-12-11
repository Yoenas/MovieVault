import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class VGridMoviesBuilder extends ConsumerWidget {
  const VGridMoviesBuilder({
    super.key,
    required this.itemCount,
    required this.onItemTap,
    required this.imageBuilder,
    required this.titleText,
    required this.listGenres,
  });

  final int itemCount;
  final void Function(int index) onItemTap;

  /// Places posterPath images on grid item
  final String Function(int index) imageBuilder;
  final String Function(int index) titleText;
  final List<int> Function(int index) listGenres;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GridView.builder(
        itemCount: (itemCount > 0) ? itemCount : 0,
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 250,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              onItemTap(index);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // poster movie
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedImageNetworkBuilder(
                    imageBuilder(index),
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  // title movie
                  child: Text(
                    titleText(index),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: textThemeUtil(context)
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  // genres movie
                  child: Text(
                    getListGenres(listGenres(index)),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: textThemeUtil(context)
                        .bodyMedium
                        ?.copyWith(color: MyColors.greyScale70),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
