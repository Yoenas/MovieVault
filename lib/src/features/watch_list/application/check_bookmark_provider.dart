import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

final isBookmarkProvider = StateProvider<bool>((ref) => false);

final checkIsBookmarkProvider = FutureProvider.autoDispose<bool>((ref) async {
  final id = ref.watch(idMovieProvider);
  final mediaType = ref.watch(mediaTypeProvider);
  final watchList =
      await ref.watch(watchListServiceProvider).fetchWatchList(mediaType);
  List<int> listId = [];
  for (final movie in watchList) {
    listId.add(movie.id);
  }
  bool isBookmarked = listId.contains(id);
  return ref.watch(isBookmarkProvider.notifier).state = isBookmarked;
});
