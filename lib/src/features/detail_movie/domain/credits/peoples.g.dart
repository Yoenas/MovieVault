// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peoples.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeoplesImpl _$$PeoplesImplFromJson(Map<String, dynamic> json) =>
    _$PeoplesImpl(
      id: (json['id'] as num).toInt(),
      cast: (json['cast'] as List<dynamic>?)
              ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      crew: (json['crew'] as List<dynamic>?)
              ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PeoplesImplToJson(_$PeoplesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };

_$CastImpl _$$CastImplFromJson(Map<String, dynamic> json) => _$CastImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      character: json['character'] as String?,
      department: json['department'] as String?,
      job: json['job'] as String?,
      originalName: json['original_name'] as String?,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$CastImplToJson(_$CastImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'department': instance.department,
      'job': instance.job,
      'original_name': instance.originalName,
      'profile_path': instance.profilePath,
    };
