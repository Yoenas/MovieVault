import '../../movies/domain/domain.dart';
import 'domain.dart';

/// derived model class used in the UI
class MovieData {
  const MovieData({
    required this.id,
    required this.backdropPath,
    required this.overview,
    required this.posterPath,
    required this.originalLanguage,
    required this.genreIds,
    required this.voteAverage,
    required this.title,
    required this.originalTitle,
    required this.releaseDate,
    required this.mediaType,
  });

  final int id;
  final String backdropPath;
  final String overview;
  final String posterPath;
  final String mediaType;
  final String originalLanguage;
  final List<int> genreIds;
  final double voteAverage;
  final String title;
  final String originalTitle;
  final String releaseDate;

  factory MovieData.fromTrending(Trending trending) {
    final String title;
    final String originalTitle;
    final String releaseDate;
    if (trending.mediaType == 'movie') {
      title = trending.title ?? '-';
      originalTitle = trending.originalTitle ?? '-';
      releaseDate = trending.releaseDate ?? '-';
    } else {
      title = trending.name ?? '-';
      originalTitle = trending.originalName ?? '-';
      releaseDate = trending.firstAirDate ?? '-';
    }
    return MovieData(
      id: trending.id,
      backdropPath: trending.backdropPath ?? '',
      overview: trending.overview ?? '-',
      posterPath: trending.posterPath ?? '',
      mediaType: trending.mediaType?.toUpperCase() ?? '',
      originalLanguage: trending.originalLanguage ?? '-',
      genreIds: trending.genreIds ?? [],
      voteAverage: trending.voteAverage ?? 0,
      title: title,
      originalTitle: originalTitle,
      releaseDate: releaseDate,
    );
  }

  factory MovieData.fromMovie(Movie movie) {
    return MovieData(
      id: movie.id,
      title: movie.title,
      overview: movie.overview ?? '-',
      releaseDate: movie.releaseDate ?? '-',
      voteAverage: movie.voteAverage ?? 0,
      backdropPath: movie.backdropPath ?? '',
      posterPath: movie.posterPath ?? '',
      mediaType: 'MOVIE',
      originalLanguage: movie.originalLanguage ?? '-',
      originalTitle: movie.originalTitle ?? '-',
      genreIds: movie.genreIds,
    );
  }

  factory MovieData.fromTv(Tv tv) {
    return MovieData(
      id: tv.id,
      title: tv.name,
      overview: tv.overview ?? '-',
      voteAverage: tv.voteAverage ?? 0,
      backdropPath: tv.backdropPath ?? '',
      posterPath: tv.posterPath ?? '',
      mediaType: 'TV',
      originalLanguage: tv.originalLanguage ?? '-',
      originalTitle: tv.originalName ?? '-',
      releaseDate: tv.firstAirDate ?? '-',
      genreIds: tv.genreIds,
    );
  }
}
