import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class RemoteMoviesRepository {
  RemoteMoviesRepository({required this.api, required this.client});
  // custom class defining all the API details
  final TheMovieDBMapAPI api;
  // client for making calls to the API
  final ApiClient client;

  // list tv
  Future<TvList> getAiringTodayTvSeries() => client.getData(
        uri: api.airingTodayTvSeries(),
        builder: (data) => TvList.fromJson(data),
      );

  Future<TvList> getOnTheAirTvSeries() => client.getData(
        uri: api.onTheAirTvSeries(),
        builder: (data) => TvList.fromJson(data),
      );

  Future<TvList> getPopularTvSeries() => client.getData(
        uri: api.popularTvSeries(),
        builder: (data) => TvList.fromJson(data),
      );

  Future<TvList> getTopRatedTvSeries() => client.getData(
        uri: api.topRatedTvSeries(),
        builder: (data) => TvList.fromJson(data),
      );

  // list movie
  Future<MovieList> getNowPlayingMovies() => client.getData(
        uri: api.nowPlayingMovies(),
        builder: (data) => MovieList.fromJson(data),
      );

  Future<MovieList> getPopularMovies() => client.getData(
        uri: api.popularMovies(),
        builder: (data) => MovieList.fromJson(data),
      );

  Future<MovieList> getTopRatedMovies() => client.getData(
        uri: api.topRatedMovies(),
        builder: (data) => MovieList.fromJson(data),
      );

  Future<MovieList> getUpcomingMovies() => client.getData(
        uri: api.upcomingMovies(),
        builder: (data) => MovieList.fromJson(data),
      );

  // trending
  Future<TrendingList> getTrendingListAll() => client.getData(
        uri: api.trendingListAll(),
        builder: (data) => TrendingList.fromJson(data),
      );

  Future<TrendingList> getTrendingMovies() => client.getData(
        uri: api.trendingMovies(),
        builder: (data) => TrendingList.fromJson(data),
      );

  Future<TrendingList> getTrendingTv() => client.getData(
        uri: api.trendingTv(),
        builder: (data) => TrendingList.fromJson(data),
      );
}

final moviesRepositoryProvider = Provider<RemoteMoviesRepository>((ref) {
  return RemoteMoviesRepository(api: TheMovieDBMapAPI(), client: ApiClient());
});
