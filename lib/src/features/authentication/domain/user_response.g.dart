// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      email: json['email'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      birthday: json['birthday'] as String,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'name': instance.name,
      'birthday': instance.birthday,
      'image_url': instance.imageUrl,
    };
