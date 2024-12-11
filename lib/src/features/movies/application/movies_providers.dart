import 'package:movie_vault/src/features/search/application/search_provider.dart';

import '../../_shared/_shared.dart';

import '../data/data.dart';
import '../domain/domain.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final airingTodayTvSeriesProvider =
    FutureProvider.autoDispose<TvListData>((ref) async {
  final nowPlayingMovies =
      await ref.read(moviesRepositoryProvider).getAiringTodayTvSeries();
  return TvListData.from(nowPlayingMovies);
});

final nowPlayingMoviesProvider =
    FutureProvider.autoDispose<MovieListData>((ref) async {
  final nowPlayingMovies =
      await ref.read(moviesRepositoryProvider).getNowPlayingMovies();
  return MovieListData.from(nowPlayingMovies);
});

final trendingListProvider =
    FutureProvider.autoDispose<TrendingListData>((ref) async {
  final trending =
      await ref.read(moviesRepositoryProvider).getTrendingListAll();
  final listTrendingData = TrendingListData.fromAll(trending);
  if (ref.read(searchQueryProvider) == '') {
    ref.read(searchQueryProvider.notifier).state =
        listTrendingData.listTrending[0].title;
  } else {
    ref.read(searchQueryProvider);
  }
  return listTrendingData;
});
