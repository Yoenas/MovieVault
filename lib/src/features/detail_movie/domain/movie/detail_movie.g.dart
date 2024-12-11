// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenresImpl _$$GenresImplFromJson(Map<String, dynamic> json) => _$GenresImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenresImplToJson(_$GenresImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$DetailMovieImpl _$$DetailMovieImplFromJson(Map<String, dynamic> json) =>
    _$DetailMovieImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      overview: json['overview'] as String?,
      runtime: (json['runtime'] as num?)?.toInt(),
      status: json['status'] as String?,
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DetailMovieImplToJson(_$DetailMovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'status': instance.status,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'genres': instance.genres,
    };
