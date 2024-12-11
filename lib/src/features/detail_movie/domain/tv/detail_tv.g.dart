// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_tv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonImpl _$$SeasonImplFromJson(Map<String, dynamic> json) => _$SeasonImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      airDate: json['air_date'] as String?,
      episodeCount: (json['episode_count'] as num?)?.toInt(),
      seasonNumber: (json['season_number'] as num?)?.toInt(),
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SeasonImplToJson(_$SeasonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'air_date': instance.airDate,
      'episode_count': instance.episodeCount,
      'season_number': instance.seasonNumber,
      'vote_average': instance.voteAverage,
    };

_$DetailTvImpl _$$DetailTvImplFromJson(Map<String, dynamic> json) =>
    _$DetailTvImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      overview: json['overview'] as String?,
      status: json['status'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      inProduction: json['in_production'] as bool?,
      lastAirDate: json['last_air_date'] as String?,
      numberOfEpisodes: (json['number_of_episodes'] as num?)?.toInt(),
      numberOfSeasons: (json['number_of_seasons'] as num?)?.toInt(),
      episodeRunTime: (json['episode_run_time'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      seasons: (json['seasons'] as List<dynamic>?)
              ?.map((e) => Season.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DetailTvImplToJson(_$DetailTvImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'status': instance.status,
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'first_air_date': instance.firstAirDate,
      'in_production': instance.inProduction,
      'last_air_date': instance.lastAirDate,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'episode_run_time': instance.episodeRunTime,
      'genres': instance.genres,
      'seasons': instance.seasons,
    };
