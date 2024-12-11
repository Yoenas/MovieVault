import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list.freezed.dart';
part 'movie_list.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    // update any properties as needed
    // after update run the code generator again:
    // dart run build_runner build -d
    required int id,
    required String title,
    String? overview,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'genre_ids') @Default([]) List<int> genreIds,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

/// List data parsed from the API response (not used directly in the UI)
@freezed
class MovieList with _$MovieList {
  factory MovieList({required List<Movie> results}) = _MovieList;

  factory MovieList.fromJson(Map<String, dynamic> json) =>
      _$MovieListFromJson(json);
}
