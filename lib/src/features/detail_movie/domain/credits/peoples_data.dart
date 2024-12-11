import 'credits.dart';

class PeoplesData {
  const PeoplesData({
    required this.idMovie,
    required this.casts,
    required this.crews,
  });

  factory PeoplesData.from(Peoples people) {
    return PeoplesData(
      idMovie: people.id,
      casts: people.cast.map((caster) => CastData.from(caster)).toList(),
      crews: people.crew.map((crew) => CastData.from(crew)).toList(),
    );
  }

  final int idMovie;
  final List<CastData> casts;
  final List<CastData> crews;
}

class CastData {
  const CastData({
    required this.idPeople,
    required this.name,
    required this.originalName,
    required this.profilePath,
    required this.character,
    required this.department,
    required this.job,
  });

  factory CastData.from(Cast cast) {
    return CastData(
      idPeople: cast.id,
      name: cast.name ?? '',
      originalName: cast.originalName ?? '',
      profilePath: cast.profilePath ?? '',
      character: cast.character ?? '',
      department: cast.department ?? '',
      job: cast.job ?? '',
    );
  }

  final int idPeople;
  final String name;
  final String originalName;
  final String profilePath;
  final String character;
  final String department;
  final String job;
}
