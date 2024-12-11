import 'package:movie_vault/env/env.dart';

class TheMovieDBMapAPI {
  TheMovieDBMapAPI();

  static const String _apiBaseUrl = 'api.themoviedb.org';

  // reviews
  Uri reviewsMovie(int id) => buildUri(
        path: 'movie/$id/reviews',
        parametersBuilder: () => queryParameters(),
      );

  Uri reviewsTv(int id) => buildUri(
        path: 'tv/$id/reviews',
        parametersBuilder: () => queryParameters(),
      );

  // credits
  Uri creditsMovie(int id) => buildUri(
        path: 'movie/$id/credits',
        parametersBuilder: () => queryParameters(),
      );

  Uri creditsTv(int id) => buildUri(
        path: 'tv/$id/credits',
        parametersBuilder: () => queryParameters(),
      );

  // recommendations
  Uri recommendationsMovie(int id) => buildUri(
        path: 'movie/$id/recommendations',
        parametersBuilder: () => queryParameters(),
      );

  Uri recommendationsTvSeries(int id) => buildUri(
        path: 'tv/$id/recommendations',
        parametersBuilder: () => queryParameters(),
      );

  // detail
  Uri detailMovie(int id) => buildUri(
        path: 'movie/$id',
        parametersBuilder: () => queryParameters(),
      );

  Uri detailTv(int id) => buildUri(
        path: 'tv/$id',
        parametersBuilder: () => queryParameters(),
      );

  // api list tv
  Uri airingTodayTvSeries() => buildUri(
        path: 'tv/airing_today',
        parametersBuilder: () => queryParameters(),
      );
  Uri onTheAirTvSeries() => buildUri(
        path: 'tv/on_the_air',
        parametersBuilder: () => queryParameters(),
      );
  Uri popularTvSeries() => buildUri(
        path: 'tv/popular',
        parametersBuilder: () => queryParameters(),
      );
  Uri topRatedTvSeries() => buildUri(
        path: 'tv/top_rated',
        parametersBuilder: () => queryParameters(),
      );

  // api list movie
  Uri nowPlayingMovies() => buildUri(
        path: 'movie/now_playing',
        parametersBuilder: () => queryParameters(),
      );
  Uri popularMovies() => buildUri(
        path: 'movie/popular',
        parametersBuilder: () => queryParameters(),
      );
  Uri topRatedMovies() => buildUri(
        path: 'movie/top_rated',
        parametersBuilder: () => queryParameters(),
      );
  Uri upcomingMovies() => buildUri(
        path: 'movie/upcoming',
        parametersBuilder: () => queryParameters(),
      );

  // api trending
  Uri trendingListAll() => buildUri(
        path: 'trending/all/week',
        parametersBuilder: () => queryParameters(),
      );
  Uri trendingMovies() => buildUri(
        path: 'trending/movie/week',
        parametersBuilder: () => queryParameters(),
      );
  Uri trendingTv() => buildUri(
        path: 'trending/tv/week',
        parametersBuilder: () => queryParameters(),
      );

  // search
  Uri searchMulti(String query) => buildUri(
      path: 'search/multi',
      parametersBuilder: () => queryParameters(query: query));

  /// start path after /3/
  Uri buildUri({
    required String path,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      scheme: 'https',
      host: _apiBaseUrl,
      path: '/3/$path',
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> queryParameters({String? query}) {
    return (query != null)
        ? {
            'query': query,
            'sort_by': 'popularity',
            'api_key': Env.tmdbApiKey,
          }
        : {
            'sort_by': 'popularity',
            'api_key': Env.tmdbApiKey,
          };
  }
}
