import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

final reviewsProvider = FutureProvider.autoDispose<ListReviewData>((ref) async {
  final mediaType = ref.watch(mediaTypeProvider);
  final id = ref.watch(idMovieProvider);
  if (mediaType == 'MOVIE') {
    final creditsMovie =
        await ref.read(detailRepositoryProvider).getReviewsMovie(id: id);
    return ListReviewData.from(creditsMovie);
  } else if (mediaType == 'TV') {
    final creditsTv =
        await ref.read(detailRepositoryProvider).getReviewsTv(id: id);
    return ListReviewData.from(creditsTv);
  } else {
    throw FormatException('Unknown id Movie or Media Type');
  }
});
