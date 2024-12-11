import 'detail_tv.dart';

class SeasonData {
  const SeasonData({
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
    required this.airDate,
    required this.episodeCount,
    required this.seasonNumber,
    required this.voteAverage,
  });

  factory SeasonData.from(Season season) {
    return SeasonData(
      id: season.id,
      name: season.name ?? '-',
      overview: season.overview ?? '-',
      posterPath: season.posterPath ?? '-',
      airDate: season.airDate ?? '-',
      episodeCount: season.episodeCount ?? 0,
      seasonNumber: season.seasonNumber ?? 0,
      voteAverage: season.voteAverage ?? 0,
    );
  }

  final int id;
  final String name;
  final String overview;
  final String posterPath;
  final String airDate;
  final int episodeCount;
  final int seasonNumber;
  final double voteAverage;
}
