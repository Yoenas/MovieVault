import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_list.freezed.dart';
part 'tv_list.g.dart';

@freezed
class Tv with _$Tv {
  factory Tv({
    // update any properties as needed
    // after update run the code generator again:
    // dart run build_runner build -d
    required int id,
    required String name,
    String? overview,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_name') String? originalName,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
    @JsonKey(name: 'genre_ids') @Default([]) List<int> genreIds,
  }) = _Tv;

  factory Tv.fromJson(Map<String, dynamic> json) => _$TvFromJson(json);
}

/// List Tv Series parsed from the API response (not used directly in the UI)
@freezed
class TvList with _$TvList {
  factory TvList({required List<Tv> results}) = _TvList;

  factory TvList.fromJson(Map<String, dynamic> json) => _$TvListFromJson(json);
}
