import '../domain.dart';

class GenreData {
  const GenreData({
    required this.id,
    required this.name,
  });

  factory GenreData.from(Genres genres) {
    return GenreData(id: genres.id, name: genres.name);
  }

  final int id;
  final String name;
}
