import '../domain.dart';

// derived model class used in the UI
class MovieListData {
  const MovieListData(this.list);
  factory MovieListData.from(MovieList movieList) {
    return MovieListData(
      movieList.results.map((item) => MovieData.fromMovie(item)).toList(),
    );
  }
  final List<MovieData> list;
}
