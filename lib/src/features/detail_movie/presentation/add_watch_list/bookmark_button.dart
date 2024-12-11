import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class BookmarkButton extends ConsumerWidget {
  const BookmarkButton({
    super.key,
    required this.detailData,
    this.color = MyColors.primary,
    this.size = 30,
  });
  final DetailData detailData;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkIsWatchList = ref.watch(checkIsBookmarkProvider);
    final statusWatchList = ref.watch(isBookmarkProvider);
    final id = ref.watch(idMovieProvider);
    final mediaType = ref.watch(mediaTypeProvider);

    return checkIsWatchList.when(
      data: (data) {
        return IconButton(
          icon: Icon(
            (statusWatchList)
                ? Icons.bookmark_added_rounded
                : Icons.bookmark_add_outlined,
            color: color,
            size: size,
          ),
          onPressed: () {
            if (!statusWatchList) {
              mediaType == 'MOVIE'
                  ? ref
                      .read(movieWatchListControllerProvider.notifier)
                      .addWatchList(detailData)
                  : ref
                      .read(tvWatchListControllerProvider.notifier)
                      .addWatchList(detailData);
            } else {
              mediaType == 'MOVIE'
                  ? ref
                      .read(movieWatchListControllerProvider.notifier)
                      .removeItemWatchList(id)
                  : ref
                      .read(tvWatchListControllerProvider.notifier)
                      .removeItemWatchList(id);
            }
            ref.read(isBookmarkProvider.notifier).state = !statusWatchList;
          },
        );
      },
      error: (error, stackTrace) =>
          IconButton(onPressed: () {}, icon: Icon(Icons.restart_alt_rounded)),
      loading: () => Center(
        child: SizedBox(
          height: 25,
          width: 25,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
