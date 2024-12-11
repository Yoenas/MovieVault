import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaType = ref.watch(mediaTypeProvider);
    final futureSearchResult = ref.watch(searchProvider).searchMulti();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Find Your Desire Movies',
          style: textThemeUtil(context)
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          // search box
          const SearchBox(),
          const SizedBox(height: 12),
          // list category
          HListCategoryBuilder(
            currentIndex: mediaType == 'MOVIE' ? 0 : 1,
            listCategory: ['Movie Results', 'TV Series Results'],
            onTapCategory: (index) {
              (index == 0)
                  ? ref.read(mediaTypeProvider.notifier).state = 'MOVIE'
                  : ref.read(mediaTypeProvider.notifier).state = 'TV';
            },
          ),
          FutureBuilder(
            future: futureSearchResult,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return CustomErrorWidget(errorMessage: 'An error has occured');
              }
              if (snapshot.hasData) {
                final listResults = snapshot.data!;
                return (listResults.isEmpty)
                    ? Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/not_found_movie.svg',
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Sorry, can\'t find the movie.\nTry with other title/name.',
                              style: textThemeUtil(context).bodyLarge,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    : VGridMoviesBuilder(
                        itemCount: listResults.length,
                        onItemTap: (index) {
                          ref.read(idMovieProvider.notifier).state =
                              listResults[index].id;
                          ref.read(mediaTypeProvider.notifier).state =
                              listResults[index].mediaType;
                          navigatePushTo(context,
                              destination: const DetailContainerScreen());
                          // if (mediaType == 'MOVIE') {
                          //   ref.read(idMovieProvider.notifier).state =
                          //       listResults[index].id;
                          //   ref.read(mediaTypeProvider.notifier).state =
                          //       listResults[index].mediaType;
                          //   navigatePushTo(context,
                          //       destination: const DetailContainerScreen());
                          // }
                          // if (mediaType == 'TV') {
                          //   ref.read(idMovieProvider.notifier).state =
                          //       listResults[index].id;
                          //   ref.read(mediaTypeProvider.notifier).state =
                          //       listResults[index].mediaType;
                          //   navigatePushTo(context,
                          //       destination: const DetailContainerScreen());
                          // }
                        },
                        imageBuilder: (index) {
                          return listResults[index].posterPath;
                        },
                        titleText: (index) {
                          return listResults[index].title;
                        },
                        listGenres: (index) {
                          return listResults[index].genreIds;
                        },
                      );
              }
              return LoadingWidget();
            },
          ),
        ],
      ),
    );
  }
}
