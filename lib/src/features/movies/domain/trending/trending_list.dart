import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_list.freezed.dart';
part 'trending_list.g.dart';

@freezed
class TrendingList with _$TrendingList {
  const factory TrendingList({
    required List<Trending> results,
  }) = _TrendingList;

  factory TrendingList.fromJson(Map<String, dynamic> json) =>
      _$TrendingListFromJson(json);
}

@freezed
class Trending with _$Trending {
  const factory Trending({
    required int id,
    @JsonKey(name: "overview") String? overview,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "original_language") String? originalLanguage,
    @JsonKey(name: "genre_ids") List<int>? genreIds,
    @JsonKey(name: "popularity") double? popularity,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "original_title") String? originalTitle,
    @JsonKey(name: "release_date") String? releaseDate,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "original_name") String? originalName,
    @JsonKey(name: "first_air_date") String? firstAirDate,
    @JsonKey(name: "media_type") String? mediaType,
  }) = _Trending;

  factory Trending.fromJson(Map<String, dynamic> json) =>
      _$TrendingFromJson(json);
}
