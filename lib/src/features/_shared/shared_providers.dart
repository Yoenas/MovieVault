import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenericStateNotifier<T> extends Notifier<T> {
  GenericStateNotifier(this._init);
  final T Function() _init;
  @override
  T build() => _init();
  @override
  set state(T value) => super.state = value;
  @override
  T get state => super.state;
}

final mediaTypeProvider = NotifierProvider<GenericStateNotifier<String>, String>(() {
  return GenericStateNotifier<String>(() => 'MOVIE');
});

final idMovieProvider = NotifierProvider<GenericStateNotifier<int>, int>(() {
  return GenericStateNotifier<int>(() => 0);
});
