import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_movie.freezed.dart';
part 'detail_movie.g.dart';

@freezed
class Genres with _$Genres {
  factory Genres({
    required int id,
    required String name,
  }) = _Genres;

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}

@freezed
class DetailMovie with _$DetailMovie {
  factory DetailMovie({
    required int id,
    required String title,
    String? overview,
    int? runtime,
    String? status,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @Default([]) List<Genres> genres,
  }) = _DetailMovie;

  factory DetailMovie.fromJson(Map<String, dynamic> json) =>
      _$DetailMovieFromJson(json);
}
