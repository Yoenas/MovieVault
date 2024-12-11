import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/_db/db_helper.dart';

import '../../detail_movie/domain/domain.dart';
import '../domain/domain.dart';

class LocalWatchListRepository {
  const LocalWatchListRepository({required this.dbHelper});
  final DatabaseHelper dbHelper;

  Future<void> addItem({
    required String mediaType,
    required DetailData dataDetail,
  }) =>
      dbHelper.insertItem(
        mediaType: mediaType,
        dataMapper: mediaType == 'MOVIE'
            ? dataDetail.detailMovie!.toMap()
            : dataDetail.detailTv!.toMap(),
      );

  Future<List<BookmarkData>> fetchWatchList({required mediaType}) =>
      dbHelper.fetchWatchList(
        mediaType: mediaType,
        mapper: (data) {
          return data.map((row) => BookmarkData.fromMap(row)).toList();
        },
      );

  Future<void> removeItem({required String mediaType, required int id}) =>
      dbHelper.removeItem(mediaType: mediaType, id: id);

  Future<void> restoreItem(
          {required String mediaType, required BookmarkData data}) =>
      dbHelper.restoreItem(mediaType: mediaType, mapper: data.toMap());

  Future<void> updateStatusIsWatched({
    required String mediaType,
    required int id,
    required BookmarkData data,
  }) =>
      dbHelper.updateStatusIsWatched(
          id: id, mediaType: mediaType, mapper: data.toMap());
}

final watchListRepositoryProvider = Provider<LocalWatchListRepository>((ref) {
  return LocalWatchListRepository(dbHelper: DatabaseHelper());
});
