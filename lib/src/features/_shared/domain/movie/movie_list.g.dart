// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      overview: json['overview'] as String?,
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['media_type'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'genre_ids': instance.genreIds,
    };

_$MovieListImpl _$$MovieListImplFromJson(Map<String, dynamic> json) =>
    _$MovieListImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieListImplToJson(_$MovieListImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
