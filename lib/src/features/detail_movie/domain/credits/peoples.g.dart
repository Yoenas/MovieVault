// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peoples.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Peoples _$PeoplesFromJson(Map<String, dynamic> json) => _Peoples(
  id: (json['id'] as num).toInt(),
  cast:
      (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  crew:
      (json['crew'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PeoplesToJson(_Peoples instance) => <String, dynamic>{
  'id': instance.id,
  'cast': instance.cast,
  'crew': instance.crew,
};

_Cast _$CastFromJson(Map<String, dynamic> json) => _Cast(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  character: json['character'] as String?,
  department: json['department'] as String?,
  job: json['job'] as String?,
  originalName: json['original_name'] as String?,
  profilePath: json['profile_path'] as String?,
);

Map<String, dynamic> _$CastToJson(_Cast instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'character': instance.character,
  'department': instance.department,
  'job': instance.job,
  'original_name': instance.originalName,
  'profile_path': instance.profilePath,
};
