import 'package:movie_vault/src/commons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkListTile extends ConsumerWidget {
  const BookmarkListTile({
    super.key,
    required this.dataDetail,
  });

  final DetailData dataDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkIsWatchList = ref.watch(checkIsBookmarkProvider);
    final statusWatchList = ref.watch(isBookmarkProvider);
    final id = ref.watch(idMovieProvider);
    final mediaType = ref.watch(mediaTypeProvider);

    return checkIsWatchList.when(
      data: (data) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 120),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              statusWatchList ? 'Added to Watch List' : 'Add to Watch List',
              style: textThemeUtil(context).bodyMedium?.copyWith(
                  color: MyColors.greyScale20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            leading: Icon(
              size: 30,
              statusWatchList
                  ? Icons.bookmark_added_rounded
                  : Icons.bookmark_add_outlined,
              color: MyColors.white,
            ),
            onTap: () {
              if (!statusWatchList) {
                mediaType == 'MOVIE'
                    ? ref
                        .read(movieWatchListControllerProvider.notifier)
                        .addWatchList(dataDetail)
                    : ref
                        .read(tvWatchListControllerProvider.notifier)
                        .addWatchList(dataDetail);
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
          ),
        );
      },
      error: (error, stackTrace) =>
          IconButton(onPressed: () {}, icon: Icon(Icons.restart_alt_rounded)),
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
