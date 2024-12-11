import 'domain.dart';

// derived model class used in the UI
class DetailData {
  const DetailData({
    this.detailMovie,
    this.detailTv,
  });

  factory DetailData.fromMovie(DetailMovie detailMovie) {
    return DetailData(detailMovie: DetailMovieData.from(detailMovie));
  }

  factory DetailData.fromTv(DetailTv detailTv) {
    return DetailData(detailTv: DetailTvData.from(detailTv));
  }

  final DetailMovieData? detailMovie;
  final DetailTvData? detailTv;
}
