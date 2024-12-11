import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class RemoteDetailRepository {
  RemoteDetailRepository({required this.api, required this.client});
  // custom class defining all the API details
  final TheMovieDBMapAPI api;
  // client for making calls to the API
  final ApiClient client;

  Future<ListReview> getReviewsMovie({required int id}) => client.getData(
        uri: api.reviewsMovie(id),
        builder: (data) => ListReview.fromJson(data),
      );

  Future<ListReview> getReviewsTv({required int id}) => client.getData(
        uri: api.reviewsTv(id),
        builder: (data) => ListReview.fromJson(data),
      );

  Future<Peoples> getCreditsMovie({required int id}) => client.getData(
        uri: api.creditsMovie(id),
        builder: (data) => Peoples.fromJson(data),
      );

  Future<Peoples> getCreditsTv({required int id}) => client.getData(
        uri: api.creditsTv(id),
        builder: (data) => Peoples.fromJson(data),
      );

  Future<MovieList> getRecommendationsMovie({required int id}) =>
      client.getData(
        uri: api.recommendationsMovie(id),
        builder: (data) => MovieList.fromJson(data),
      );

  Future<TvList> getRecommendationsTvSeries({required int id}) =>
      client.getData(
        uri: api.recommendationsTvSeries(id),
        builder: (data) => TvList.fromJson(data),
      );

  Future<DetailMovie> getDetailMovie({required int id}) => client.getData(
        uri: api.detailMovie(id),
        builder: (data) => DetailMovie.fromJson(data),
      );

  Future<DetailTv> getDetailTv({required int id}) => client.getData(
        uri: api.detailTv(id),
        builder: (data) => DetailTv.fromJson(data),
      );
}

final detailRepositoryProvider = Provider<RemoteDetailRepository>((ref) {
  return RemoteDetailRepository(api: TheMovieDBMapAPI(), client: ApiClient());
});
