import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain.dart';

part 'detail_tv.freezed.dart';
part 'detail_tv.g.dart';

@freezed
class Season with _$Season {
  factory Season({
    required int id,
    String? name,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'air_date') String? airDate,
    @JsonKey(name: 'episode_count') int? episodeCount,
    @JsonKey(name: 'season_number') int? seasonNumber,
    @JsonKey(name: 'vote_average') double? voteAverage,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}

@freezed
class DetailTv with _$DetailTv {
  factory DetailTv({
    required int id,
    required String name,
    String? overview,
    String? status,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_name') String? originalName,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
    @JsonKey(name: 'in_production') bool? inProduction,
    @JsonKey(name: 'last_air_date') String? lastAirDate,
    @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
    @JsonKey(name: 'episode_run_time') @Default([]) List<int> episodeRunTime,
    @Default([]) List<Genres> genres,
    @Default([]) List<Season> seasons,
  }) = _DetailTv;

  factory DetailTv.fromJson(Map<String, dynamic> json) =>
      _$DetailTvFromJson(json);
}
