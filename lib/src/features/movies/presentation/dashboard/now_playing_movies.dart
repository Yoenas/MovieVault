import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class NowPlayingMovies extends ConsumerWidget {
  const NowPlayingMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncNowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    return Column(
      children: [
        RowSeeAll(
            titleList: 'Now Playing Movies',
            onSeeAll: () {
              ref.read(mediaTypeProvider.notifier).state = 'MOVIE';
              navigatePushTo(context, destination: const SeeAllScreen());
            }),
        asyncNowPlayingMovies.when(
          data: (data) => HListMovieBuilder(
            listMovie: data.list,
            onItemTap: (index) {
              final dataTvItem = data.list[index];
              ref.read(idMovieProvider.notifier).state = dataTvItem.id;
              ref.read(mediaTypeProvider.notifier).state = dataTvItem.mediaType;
              navigatePushTo(
                context,
                destination: const DetailContainerScreen(),
              );
            },
          ),
          error: (error, stackTrace) =>
              CustomErrorWidget(errorMessage: 'An error has occured.'),
          loading: () => LoadingWidget(),
        ),
      ],
    );
  }
}
