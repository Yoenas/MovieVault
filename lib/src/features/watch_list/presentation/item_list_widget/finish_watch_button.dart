import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class FinishWatchButton extends ConsumerWidget {
  const FinishWatchButton({
    super.key,
    required this.dataItem,
  });

  final BookmarkData dataItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isWatched = dataItem.isWatched;
    return IconButton(
      onPressed: () {
        isWatched = !isWatched;
        dataItem.mediaType == 'MOVIE'
            ? ref
                .read(movieWatchListControllerProvider.notifier)
                .updateStatusIsWatched(
                    dataItem.id, dataItem.copyWith(isWatched))
            : ref
                .read(tvWatchListControllerProvider.notifier)
                .updateStatusIsWatched(
                    dataItem.id, dataItem.copyWith(isWatched));
      },
      icon: (isWatched)
          ? Icon(
              Icons.check_circle_rounded,
              color: MyColors.primary,
              size: 30,
            )
          : Icon(
              Icons.check_circle_outline_rounded,
              color: MyColors.greyScale30,
              size: 30,
            ),
    );
  }
}
