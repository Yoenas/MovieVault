import 'package:flutter_riverpod/flutter_riverpod.dart';

final mediaTypeProvider = StateProvider<String>((ref) {
  return 'MOVIE';
});

final idMovieProvider = StateProvider<int>((ref) {
  return 0;
});
