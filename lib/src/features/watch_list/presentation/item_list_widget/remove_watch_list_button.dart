import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class RemoveWatchListButton extends ConsumerWidget {
  const RemoveWatchListButton({
    super.key,
    required this.dataItem,
    required this.onRemove,
  });

  final BookmarkData dataItem;
  final void Function() onRemove;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkIsWatchList = ref.watch(checkIsBookmarkProvider);
    final statusWatchList = ref.watch(isBookmarkProvider);
    return checkIsWatchList.when(
      data: (isWatchList) {
        return IconButton(
          onPressed: () {
            (dataItem.mediaType == 'MOVIE')
                ? ref
                    .read(movieWatchListControllerProvider.notifier)
                    .removeItemWatchList(dataItem.id)
                : ref
                    .read(tvWatchListControllerProvider.notifier)
                    .removeItemWatchList(dataItem.id);
            ref.read(isBookmarkProvider.notifier).state = !statusWatchList;
            onRemove();
          },
          icon: Icon(
            Icons.clear_rounded,
            color: MyColors.error,
            size: 35,
          ),
        );
      },
      error: (error, stackTrace) => SizedBox.shrink(),
      loading: () => SizedBox(
        height: 25,
        width: 25,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
