// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvImpl _$$TvImplFromJson(Map<String, dynamic> json) => _$TvImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      overview: json['overview'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['media_type'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TvImplToJson(_$TvImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'first_air_date': instance.firstAirDate,
      'genre_ids': instance.genreIds,
    };

_$TvListImpl _$$TvListImplFromJson(Map<String, dynamic> json) => _$TvListImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Tv.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvListImplToJson(_$TvListImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
