// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tv _$TvFromJson(Map<String, dynamic> json) => _Tv(
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
  genreIds:
      (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
);

Map<String, dynamic> _$TvToJson(_Tv instance) => <String, dynamic>{
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

_TvList _$TvListFromJson(Map<String, dynamic> json) => _TvList(
  results: (json['results'] as List<dynamic>)
      .map((e) => Tv.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TvListToJson(_TvList instance) => <String, dynamic>{
  'results': instance.results,
};
