import 'package:movie_vault/src/commons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchService {
  const SearchService(this.ref);
  final Ref ref;

  Future<List<MovieData>> searchMulti() async {
    final mediaType = ref.watch(mediaTypeProvider);
    final query = ref.watch(searchQueryProvider);
    if (mediaType == 'MOVIE') {
      final searchResult = await ref.read(searchRepository).searchMovie(query);
      final resultData = TrendingListData.fromSearch(searchResult).listTrending;
      return resultData.where((item) => item.mediaType == 'MOVIE').toList();
    } else {
      final searchResult = await ref.read(searchRepository).searchMovie(query);
      final resultData = TrendingListData.fromSearch(searchResult).listTrending;
      return resultData.where((item) => item.mediaType == 'TV').toList();
    }
  }
}

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchProvider = Provider<SearchService>((ref) => SearchService(ref));
