import 'package:movie_vault/src/commons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReviewsFilmScreen extends ConsumerWidget {
  const ReviewsFilmScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureReviews = ref.watch(reviewsProvider);
    return futureReviews.when(
      data: (data) => Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            for (final review in data.listReview) ReviewItem(review: review),
          ],
        ),
      ),
      error: (error, stackTrace) {
        return CustomErrorWidget(errorMessage: 'An error has occured');
      },
      loading: () => LoadingWidget(),
    );
  }
}
