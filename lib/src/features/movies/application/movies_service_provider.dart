import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class MoviesService {
  MoviesService(this.ref);
  final Ref ref;

  Future<TrendingListData> trendingMovies() async {
    final mediaType = ref.watch(mediaTypeProvider);
    if (mediaType == 'MOVIE') {
      final trendingMovies =
          await ref.read(moviesRepositoryProvider).getTrendingMovies();
      return TrendingListData.fromMovies(trendingMovies);
    } else if (mediaType == 'TV') {
      final trendingTvSeries =
          await ref.read(moviesRepositoryProvider).getTrendingTv();
      return TrendingListData.fromMovies(trendingTvSeries);
    } else {
      throw FormatException('Unknown error from service.');
    }
  }

  Future<List<MovieData>> listMovieFromCategory() async {
    final index = ref.watch(indexCategoryMovieProvider);
    MovieList listMovie;
    switch (index) {
      case 0:
        listMovie =
            await ref.read(moviesRepositoryProvider).getNowPlayingMovies();
      case 1:
        listMovie = await ref.read(moviesRepositoryProvider).getPopularMovies();
      case 2:
        listMovie =
            await ref.read(moviesRepositoryProvider).getTopRatedMovies();
      case 3:
        listMovie =
            await ref.read(moviesRepositoryProvider).getUpcomingMovies();
        break;
      default:
        throw FormatException('Unknown error from service.');
    }
    return MovieListData.from(listMovie).list;
  }

  Future<List<MovieData>> listTvSeriesFromCategory() async {
    final index = ref.watch(indexCategoryTvSeriesProvider);
    TvList listMovie;
    switch (index) {
      case 0:
        listMovie =
            await ref.read(moviesRepositoryProvider).getAiringTodayTvSeries();
      case 1:
        listMovie =
            await ref.read(moviesRepositoryProvider).getOnTheAirTvSeries();
      case 2:
        listMovie =
            await ref.read(moviesRepositoryProvider).getPopularTvSeries();
      case 3:
        listMovie =
            await ref.read(moviesRepositoryProvider).getTopRatedTvSeries();
        break;
      default:
        throw FormatException('Unknown error from service.');
    }
    return TvListData.from(listMovie).list;
  }

  Future<List<List<MovieData>>> getSeeAllListData() async {
    final value = await Future.wait([
      listMovieFromCategory(),
      listTvSeriesFromCategory(),
    ]);
    return value;
  }
}

final indexCategoryMovieProvider = StateProvider<int>((ref) {
  return 0;
});

final indexCategoryTvSeriesProvider = StateProvider<int>((ref) {
  return 0;
});

final moviesServiceProvider = Provider<MoviesService>((ref) {
  return MoviesService(ref);
});
