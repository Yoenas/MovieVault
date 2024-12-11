import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class SeeAllScreen extends ConsumerWidget {
  const SeeAllScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> categoryMovie = [
      'Now Playing Movies',
      'Popular',
      'Top Rated',
      'Upcoming'
    ];

    List<String> categoryTv = [
      'Airing Today',
      'On The Air',
      'Popular',
      'Top Rated'
    ];

    final mediaType = ref.watch(mediaTypeProvider);
    return Scaffold(
      appBar: AppBar(
        title: CenterTitleAppBar(
          (mediaType == 'MOVIE')
              ? 'Discover your Favorite Movies'
              : 'Let\'s see what\'s on TV',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // trending movies
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Trending in this week',
              style: textThemeUtil(context)
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // carousel
          const CarouselTrending(),
          // categories
          HListCategoryBuilder(
            listCategory: (mediaType == 'MOVIE') ? categoryMovie : categoryTv,
            onTapCategory: (index) {
              if (mediaType == 'MOVIE') {
                ref.read(indexCategoryMovieProvider.notifier).state = index;
                ref.read(moviesServiceProvider).listMovieFromCategory();
              }
              if (mediaType == 'TV') {
                ref.read(indexCategoryTvSeriesProvider.notifier).state = index;
                ref.read(moviesServiceProvider).listTvSeriesFromCategory();
              }
            },
          ),
          // grid movies
          const GridMovies()
        ],
      ),
    );
  }
}
