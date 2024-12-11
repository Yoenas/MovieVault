import 'package:movie_vault/src/utils/helpers.dart';

import '../movie/genre_data.dart';
import 'detail_tv.dart';
import 'season_data.dart';

class DetailTvData {
  const DetailTvData({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
    required this.backdropPath,
    required this.posterPath,
    required this.originalLanguage,
    required this.genreIds,
    required this.status,
    required this.inProduction,
    required this.lastAirDate,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.episodeRunTime,
    required this.seasons,
    required this.mediaType,
  });

  factory DetailTvData.from(DetailTv tv) {
    final String runtime;
    if (tv.episodeRunTime.isNotEmpty) {
      final source = tv.episodeRunTime[0];
      final minute = source % 60.toInt();
      if (source >= 60 && source > 0) {
        runtime = '${source ~/ 60}h ${minute}m';
      } else {
        runtime = '${source}m';
      }
    } else {
      runtime = '-';
    }
    final genres = tv.genres.map((genreId) => GenreData.from(genreId)).toList();
    final List<int> genreIds = [];
    for (final genre in genres) {
      genreIds.add(genre.id);
    }
    return DetailTvData(
      id: tv.id,
      title: tv.name,
      overview: tv.overview ?? '-',
      voteAverage: tv.voteAverage ?? 0,
      backdropPath: tv.backdropPath ?? '',
      posterPath: tv.posterPath ?? '',
      originalLanguage: tv.originalLanguage ?? '-',
      originalTitle: tv.originalName ?? '-',
      releaseDate: tv.firstAirDate ?? '-',
      genreIds: genreIds,
      status: tv.status ?? '-',
      inProduction: tv.inProduction ?? false,
      lastAirDate: tv.lastAirDate ?? '-',
      numberOfEpisodes: tv.numberOfEpisodes ?? 0,
      numberOfSeasons: tv.numberOfSeasons ?? 0,
      episodeRunTime: runtime,
      seasons: tv.seasons.map((item) => SeasonData.from(item)).toList(),
      mediaType: 'TV',
    );
  }

  /// serializa json to store data in local db
  Map<String, dynamic> toMap() => {
        'id': id,
        'overview': overview,
        'poster_path': posterPath,
        'backdrop_path': backdropPath,
        'media_type': mediaType,
        'genre_ids': genreIdsToString(genreIds),
        'title': title,
        'runtime': episodeRunTime,
        'added_on': DateTime.now().toString(),
        'is_watched': 0,
      };

  final int id;
  final String title;
  final String originalTitle;
  final String overview;
  final String releaseDate;
  final double voteAverage;
  final String backdropPath;
  final String posterPath;
  final String originalLanguage;
  final List<int> genreIds;
  final String status;
  final bool inProduction;
  final String lastAirDate;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final String episodeRunTime;
  final List<SeasonData> seasons;
  final String mediaType;
}
