import '../domain.dart';

// derived model class used in the UI
class TvListData {
  const TvListData(this.list);
  factory TvListData.from(TvList tvList) {
    return TvListData(
      tvList.results.map((item) => MovieData.fromTv(item)).toList(),
    );
  }

  final List<MovieData> list;
}
