import 'list_review.dart';

class ListReviewData {
  const ListReviewData({required this.listReview});

  factory ListReviewData.from(ListReview list) {
    return ListReviewData(
      listReview:
          list.results.map((review) => ReviewData.from(review)).toList(),
    );
  }

  final List<ReviewData> listReview;
}

class ReviewData {
  const ReviewData({
    required this.author,
    required this.content,
    required this.updatedAt,
    required this.createdAt,
    required this.idReview,
    required this.authorDetails,
  });

  factory ReviewData.from(Review review) {
    return ReviewData(
      author: review.author,
      idReview: review.id,
      content: review.content ?? '',
      updatedAt: review.updatedAt ?? '',
      createdAt: review.createdAt ?? '',
      authorDetails: AuthorDetailsData.from(review.authorDetails),
    );
  }

  final String author;
  final String idReview;
  final String content;
  final String createdAt;
  final String updatedAt;
  final AuthorDetailsData authorDetails;
}

class AuthorDetailsData {
  const AuthorDetailsData({
    required this.username,
    required this.avatarPath,
    required this.rating,
    required this.name,
  });

  factory AuthorDetailsData.from(AuthorDetails author) {
    return AuthorDetailsData(
      username: author.username ?? '',
      avatarPath: author.avatarPath ?? '',
      rating: author.rating ?? 0,
      name: author.name ?? '',
    );
  }

  final String username;
  final int rating;
  final String avatarPath;
  final String name;
}
