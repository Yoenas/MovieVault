import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class WatchListServiceController extends AsyncNotifier<List<BookmarkData>> {
  WatchListServiceController(this.mediaType);
  final String mediaType;

  Future<List<BookmarkData>> _fetchWatchList() async {
    return ref.watch(watchListServiceProvider).fetchWatchList(mediaType);
  }

  @override
  FutureOr<List<BookmarkData>> build() {
    return _fetchWatchList();
  }

  Future<void> addWatchList(DetailData dataDetail) async {
    // set the state to loading
    state = const AsyncValue.loading();
    // add the new WatchList Movie and reload WatchList from LocalRepository
    state = await AsyncValue.guard(() async {
      ref.watch(watchListServiceProvider).addItem(dataDetail);
      return _fetchWatchList();
    });
  }

  Future<void> removeItemWatchList(int id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.watch(watchListServiceProvider).removeItem(id, mediaType);
      return _fetchWatchList();
    });
  }

  Future<void> restoreWatchList(BookmarkData data) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      ref
          .watch(watchListServiceProvider)
          .restoreItem(mediaType: mediaType, data: data);
      return _fetchWatchList();
    });
  }

  Future<void> updateStatusIsWatched(int id, BookmarkData data) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      ref
          .watch(watchListServiceProvider)
          .updateStatusIsWatched(mediaType: mediaType, id: id, data: data);
      return _fetchWatchList();
    });
  }
}

final movieWatchListControllerProvider =
    AsyncNotifierProvider<WatchListServiceController, List<BookmarkData>>(() {
  return WatchListServiceController('MOVIE');
});

final tvWatchListControllerProvider =
    AsyncNotifierProvider<WatchListServiceController, List<BookmarkData>>(() {
  return WatchListServiceController('TV');
});
