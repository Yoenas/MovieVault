import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class RemoteSearchRepository {
  RemoteSearchRepository({required this.api, required this.client});
  // custom class defining all the API details
  final TheMovieDBMapAPI api;
  // client for making calls to the API
  final ApiClient client;

  Future<TrendingList> searchMovie(String query) async => client.getData(
        uri: api.searchMulti(query),
        builder: (data) => TrendingList.fromJson(data),
      );
}

final searchRepository = Provider<RemoteSearchRepository>((ref) {
  return RemoteSearchRepository(api: TheMovieDBMapAPI(), client: ApiClient());
});
