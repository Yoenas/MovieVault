// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListReview _$ListReviewFromJson(Map<String, dynamic> json) => _ListReview(
  id: (json['id'] as num).toInt(),
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ListReviewToJson(_ListReview instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  id: json['id'] as String,
  author: json['author'] as String,
  content: json['content'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  authorDetails: AuthorDetails.fromJson(
    json['author_details'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'id': instance.id,
  'author': instance.author,
  'content': instance.content,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'author_details': instance.authorDetails,
};

_AuthorDetails _$AuthorDetailsFromJson(Map<String, dynamic> json) =>
    _AuthorDetails(
      name: json['name'] as String?,
      username: json['username'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      avatarPath: json['avatar_path'] as String?,
    );

Map<String, dynamic> _$AuthorDetailsToJson(_AuthorDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'rating': instance.rating,
      'avatar_path': instance.avatarPath,
    };
