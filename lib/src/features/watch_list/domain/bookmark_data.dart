import 'package:movie_vault/src/utils/helpers.dart';

class BookmarkData {
  BookmarkData({
    required this.id,
    required this.title,
    required this.overview,
    required this.runtime,
    required this.backdropPath,
    required this.posterPath,
    required this.mediaType,
    required this.genreIds,
    required this.isWatched,
  });

  factory BookmarkData.fromMap(Map<String, Object?> row) {
    final genreString = row['genre_ids'] as String;
    final List<int> genreList;
    if (genreString != '') {
      final x = genreString.split(', ');
      genreList = x.map((id) => int.parse(id)).toList();
    } else {
      genreList = [];
    }
    return BookmarkData(
      id: row['id'] as int,
      title: row['title'] as String,
      overview: row['overview'] as String,
      runtime: row['runtime'] as String,
      backdropPath: row['backdrop_path'] as String,
      posterPath: row['poster_path'] as String,
      mediaType: row['media_type'] as String,
      genreIds: genreList,
      isWatched: row['is_watched'] == 1,
    );
  }

  /// serializa json to store data in local db
  Map<String, dynamic> toMap() => {
        'id': id,
        'overview': overview,
        'poster_path': posterPath,
        'backdrop_path': backdropPath,
        'media_type': mediaType,
        'genre_ids': genreIdsToString(genreIds),
        'title': title,
        'runtime': runtime,
        'added_on': DateTime.now().toString(),
        'is_watched': isWatched,
      };

  BookmarkData copyWith(bool? isWatched) {
    return BookmarkData(
        id: id,
        title: title,
        overview: overview,
        runtime: runtime,
        backdropPath: backdropPath,
        posterPath: posterPath,
        mediaType: mediaType,
        genreIds: genreIds,
        isWatched: isWatched ?? this.isWatched);
  }

  final String title;
  final int id;
  final String overview;
  final String runtime;
  final String backdropPath;
  final String posterPath;
  final String mediaType;
  final List<int> genreIds;
  final bool isWatched;
}
