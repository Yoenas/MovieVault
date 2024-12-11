import 'package:movie_vault/src/features/detail_movie/domain/movie/genre_data.dart';
import 'package:movie_vault/src/utils/helpers.dart';

import 'detail_movie.dart';

class DetailMovieData {
  const DetailMovieData({
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
    required this.runtime,
    required this.status,
    required this.mediaType,
  });

  factory DetailMovieData.from(DetailMovie movie) {
    String runtime;
    final runtimeRes = movie.runtime;
    if (runtimeRes != null) {
      final minute = runtimeRes % 60.toInt();
      if (runtimeRes >= 60 && runtimeRes > 0) {
        runtime = '${runtimeRes ~/ 60}h ${minute}m';
      } else {
        runtime = '${runtimeRes}m';
      }
    } else {
      runtime = '-';
    }
    final genres =
        movie.genres.map((genreId) => GenreData.from(genreId)).toList();
    final List<int> genreIds = [];
    for (final genre in genres) {
      genreIds.add(genre.id);
    }
    return DetailMovieData(
      id: movie.id,
      title: movie.title,
      overview: movie.overview ?? '-',
      releaseDate: movie.releaseDate ?? '-',
      voteAverage: movie.voteAverage ?? 0,
      backdropPath: movie.backdropPath ?? '',
      posterPath: movie.posterPath ?? '',
      originalLanguage: movie.originalLanguage ?? '-',
      originalTitle: movie.originalTitle ?? '-',
      genreIds: genreIds,
      status: movie.status ?? '-',
      mediaType: 'MOVIE',
      runtime: runtime,
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
        'runtime': runtime,
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
  final String runtime;
  final String status;
  final String mediaType;
}
