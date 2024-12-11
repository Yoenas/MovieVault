import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

final creditsProvider = FutureProvider.autoDispose<PeoplesData>((ref) async {
  final mediaType = ref.watch(mediaTypeProvider);
  final id = ref.watch(idMovieProvider);
  if (mediaType == 'MOVIE') {
    final creditsMovie =
        await ref.read(detailRepositoryProvider).getCreditsMovie(id: id);
    return PeoplesData.from(creditsMovie);
  } else if (mediaType == 'TV') {
    final creditsTv =
        await ref.read(detailRepositoryProvider).getCreditsTv(id: id);
    return PeoplesData.from(creditsTv);
  } else {
    throw FormatException('Unknown id Movie or Media Type');
  }
});
