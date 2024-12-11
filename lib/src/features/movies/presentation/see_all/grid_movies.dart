import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class GridMovies extends ConsumerWidget {
  const GridMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaType = ref.watch(mediaTypeProvider);
    final futureListData = ref.watch(moviesServiceProvider).getSeeAllListData();

    return FutureBuilder(
      future: futureListData,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return CustomErrorWidget(errorMessage: 'An error has occured');
        }
        if (snapshot.hasData) {
          final listMovie = snapshot.data![0];
          final listTvSeries = snapshot.data![1];
          return VGridMoviesBuilder(
            itemCount:
                (mediaType == 'MOVIE') ? listMovie.length : listTvSeries.length,
            onItemTap: (index) {
              if (mediaType == 'MOVIE') {
                ref.read(idMovieProvider.notifier).state = listMovie[index].id;
                ref.read(mediaTypeProvider.notifier).state =
                    listMovie[index].mediaType;
                navigatePushTo(context,
                    destination: const DetailContainerScreen());
              }
              if (mediaType == 'TV') {
                ref.read(idMovieProvider.notifier).state =
                    listTvSeries[index].id;
                ref.read(mediaTypeProvider.notifier).state =
                    listTvSeries[index].mediaType;
                navigatePushTo(context,
                    destination: const DetailContainerScreen());
              }
            },
            imageBuilder: (index) {
              return (mediaType == 'MOVIE')
                  ? listMovie[index].posterPath
                  : listTvSeries[index].posterPath;
            },
            titleText: (index) {
              return (mediaType == 'MOVIE')
                  ? listMovie[index].title
                  : listTvSeries[index].title;
            },
            listGenres: (index) {
              return (mediaType == 'MOVIE')
                  ? listMovie[index].genreIds
                  : listTvSeries[index].genreIds;
            },
          );
        }
        return LoadingWidget();
      },
    );
  }
}
