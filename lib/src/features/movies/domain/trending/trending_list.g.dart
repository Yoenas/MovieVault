// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingListImpl _$$TrendingListImplFromJson(Map<String, dynamic> json) =>
    _$TrendingListImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Trending.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrendingListImplToJson(_$TrendingListImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$TrendingImpl _$$TrendingImplFromJson(Map<String, dynamic> json) =>
    _$TrendingImpl(
      id: (json['id'] as num).toInt(),
      overview: json['overview'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      popularity: (json['popularity'] as num?)?.toDouble(),
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      title: json['title'] as String?,
      originalTitle: json['original_title'] as String?,
      releaseDate: json['release_date'] as String?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      mediaType: json['media_type'] as String?,
    );

Map<String, dynamic> _$$TrendingImplToJson(_$TrendingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'vote_average': instance.voteAverage,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'release_date': instance.releaseDate,
      'name': instance.name,
      'original_name': instance.originalName,
      'first_air_date': instance.firstAirDate,
      'media_type': instance.mediaType,
    };
