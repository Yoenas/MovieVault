import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_review.freezed.dart';
part 'list_review.g.dart';

@freezed
class ListReview with _$ListReview {
  const factory ListReview({
    required int id, // id movie
    @Default([]) List<Review> results,
  }) = _ListReview;

  factory ListReview.fromJson(Map<String, dynamic> json) =>
      _$ListReviewFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required String id, // id review
    required String author,
    String? content,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "author_details") required AuthorDetails authorDetails,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class AuthorDetails with _$AuthorDetails {
  const factory AuthorDetails({
    String? name,
    String? username,
    int? rating,
    @JsonKey(name: "avatar_path") String? avatarPath,
  }) = _AuthorDetails;

  factory AuthorDetails.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsFromJson(json);
}
