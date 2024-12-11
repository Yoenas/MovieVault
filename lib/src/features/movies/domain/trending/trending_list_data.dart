import 'package:movie_vault/src/features/_shared/domain/movie_data.dart';

import 'trending_list.dart';

// derived model class used in the UI
class TrendingListData {
  const TrendingListData(this.listTrending);
  factory TrendingListData.fromAll(TrendingList trendingList) {
    // sort trending by type
    final movies =
        trendingList.results.where((trending) => trending.mediaType == 'movie');
    final tvSeries =
        trendingList.results.where((trending) => trending.mediaType == 'tv');

    // takes 5 item from each Movie & Tv
    final countMovies = movies.take(5);
    final countTvSeries = tvSeries.take(5);

    // merge movie & tv series
    final mergedTrending = [...countMovies, ...countTvSeries];
    mergedTrending.shuffle();

    return TrendingListData(
      mergedTrending.map((item) => MovieData.fromTrending(item)).toList(),
    );
  }

  factory TrendingListData.fromMovies(TrendingList trendingMovies) {
    return TrendingListData(trendingMovies.results
        .map((movie) => MovieData.fromTrending(movie))
        .toList());
  }

  factory TrendingListData.fromSearch(TrendingList trendingList) {
    return TrendingListData(trendingList.results
        .map((item) => MovieData.fromTrending(item))
        .toList());
  }

  final List<MovieData> listTrending;
}
