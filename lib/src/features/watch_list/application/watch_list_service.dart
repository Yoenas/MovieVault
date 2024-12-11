import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class WatchListService {
  WatchListService({required this.ref});
  final Ref ref;

  /// fetch watch list from local
  Future<List<BookmarkData>> fetchWatchList(String mediaType) => ref
      .watch(watchListRepositoryProvider)
      .fetchWatchList(mediaType: mediaType);

  /// add movie or tv to watch list
  Future<void> addItem(DetailData dataDetail) async {
    final mediaType = ref.watch(mediaTypeProvider);
    return await ref
        .watch(watchListRepositoryProvider)
        .addItem(mediaType: mediaType, dataDetail: dataDetail);
  }

  /// remove movie or tv from watch list
  Future<void> removeItem(int id, String mediaType) async {
    return await ref
        .watch(watchListRepositoryProvider)
        .removeItem(mediaType: mediaType, id: id);
  }

  /// restore movie or tv which has been deleted
  Future<void> restoreItem(
      {required String mediaType, required BookmarkData data}) async {
    return await ref
        .watch(watchListRepositoryProvider)
        .restoreItem(mediaType: mediaType, data: data);
  }

  /// update status isWatched
  Future<void> updateStatusIsWatched(
      {required String mediaType,
      required int id,
      required BookmarkData data}) async {
    return await ref
        .watch(watchListRepositoryProvider)
        .updateStatusIsWatched(mediaType: mediaType, id: id, data: data);
  }
}

final watchListServiceProvider = Provider<WatchListService>(
  (ref) => WatchListService(ref: ref),
);
