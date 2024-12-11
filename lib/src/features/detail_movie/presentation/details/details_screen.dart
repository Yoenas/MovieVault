import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({
    super.key,
    required this.detailMovie,
    required this.detailTvSeries,
    required this.mediaType,
  });

  final DetailMovieData? detailMovie;
  final DetailTvData? detailTvSeries;
  final String mediaType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalEpisodes =
        (detailTvSeries != null) ? detailTvSeries?.numberOfEpisodes : null;
    return SelectionArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            // details
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // origin title
                Text(
                  _getOriginalTitle(),
                  style: textThemeUtil(context)
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                // publishedAt - genres - runtime
                Text(
                  '${_getReleaseDate()} • ${getListGenres(_getGenreIds())} • ${_getRuntime()}',
                  style: textThemeUtil(context).bodyLarge,
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title Rating Score
                    Column(
                      children: [
                        Text(
                          'Rating Score',
                          style: textThemeUtil(context)
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        RatingScore(voteAverage: _getVoteAverage()),
                      ],
                    ),
                    const SizedBox(width: 24),
                    // Status
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Status',
                            style: textThemeUtil(context)
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          // status value
                          Text(
                            _getStatus(),
                            style: textThemeUtil(context).bodyLarge,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Original Language',
                            style: textThemeUtil(context)
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          // original language value
                          Text(
                            getCountryName(_getOriginalLanguage()),
                            style: textThemeUtil(context).bodyLarge,
                          ),
                          const SizedBox(height: 8),
                          // Total Seasons
                          if (mediaType == 'TV')
                            Text(
                              'Total Season',
                              style: textThemeUtil(context)
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          if (mediaType == 'TV')
                            // value total season
                            Text(
                              '${_getTotalSeason()} • $totalEpisodes Total Episodes',
                              style: textThemeUtil(context).bodyLarge,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // current season
                if (mediaType == 'TV')
                  CurrentSeason(season: _getCurrentSeason()),
              ],
            ),
          ),
          // Recommendations
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4),
            child: Text(
              'Recommendations',
              style: textThemeUtil(context)
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // carousel
          CarouselRecommendations(),
          const SizedBox(height: 24)
        ],
      ),
    );
  }

  String _getOriginalLanguage() {
    String originalLanguage;
    if (detailMovie != null) {
      originalLanguage = detailMovie!.originalLanguage;
    } else {
      originalLanguage = detailTvSeries!.originalLanguage;
    }
    return originalLanguage;
  }

  double _getVoteAverage() {
    double voteAverage;
    if (detailMovie != null) {
      voteAverage = detailMovie!.voteAverage;
    } else {
      voteAverage = detailTvSeries!.voteAverage;
    }
    return voteAverage;
  }

  List<int> _getGenreIds() {
    List<int> genreIds;
    if (detailMovie != null) {
      genreIds = detailMovie!.genreIds;
    } else {
      genreIds = detailTvSeries!.genreIds;
    }
    return genreIds;
  }

  String _getReleaseDate() {
    String releaseDate;
    if (detailMovie != null) {
      releaseDate = detailMovie!.releaseDate;
    } else {
      releaseDate = detailTvSeries!.releaseDate;
    }
    return releaseDate;
  }

  String _getOriginalTitle() {
    String title;
    if (detailMovie != null) {
      title = detailMovie!.originalTitle;
    } else {
      title = detailTvSeries!.originalTitle;
    }
    return title;
  }

  SeasonData _getCurrentSeason() {
    final seasons = (detailTvSeries != null) ? detailTvSeries?.seasons : [];
    final lastSeasonIndex =
        (seasons != null && seasons.isNotEmpty) ? seasons.length - 1 : 0;

    final SeasonData currentSeason = (seasons != null && seasons.isNotEmpty)
        ? seasons[lastSeasonIndex]
        : null;
    return currentSeason;
  }

  String _getStatus() {
    final String status;
    if (detailMovie != null) {
      status = detailMovie!.status;
    } else {
      status = detailTvSeries!.status;
    }
    return status;
  }

  String _getRuntime() {
    final String runtime;
    if (detailMovie != null) {
      runtime = detailMovie!.runtime;
    } else {
      runtime = detailTvSeries!.episodeRunTime;
    }
    return runtime;
  }

  String _getTotalSeason() {
    final lengthSeason =
        (detailTvSeries != null) ? detailTvSeries!.seasons.length : null;
    final textSeason =
        (lengthSeason != null && lengthSeason > 1) ? 'Seasons' : 'Season';
    return '$lengthSeason $textSeason';
  }
}
