import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class DetailService {
  DetailService(this.ref);
  final Ref ref;

  Future<DetailData> getDetail() async {
    final mediaType = ref.watch(mediaTypeProvider);
    final id = ref.watch(idMovieProvider);
    if (mediaType == 'MOVIE') {
      final detailMovie =
          await ref.read(detailRepositoryProvider).getDetailMovie(id: id);
      return DetailData.fromMovie(detailMovie);
    } else if (mediaType == 'TV') {
      final detailTv =
          await ref.read(detailRepositoryProvider).getDetailTv(id: id);
      return DetailData.fromTv(detailTv);
    } else {
      throw FormatException('Unknown id Movie or Media Type');
    }
  }

  Future<List<MovieData>> getRecommendations() async {
    final mediaType = ref.watch(mediaTypeProvider);
    final id = ref.watch(idMovieProvider);
    if (mediaType == 'MOVIE') {
      final recommmendedMovie = await ref
          .read(detailRepositoryProvider)
          .getRecommendationsMovie(id: id);
      return MovieListData.from(recommmendedMovie).list;
    } else if (mediaType == 'TV') {
      final recommmendedTvSeries = await ref
          .read(detailRepositoryProvider)
          .getRecommendationsTvSeries(id: id);
      return TvListData.from(recommmendedTvSeries).list;
    } else {
      throw FormatException('Unknown id Movie or Media Type');
    }
  }
}

final detailServiceProvider = Provider<DetailService>((ref) {
  return DetailService(ref);
});
