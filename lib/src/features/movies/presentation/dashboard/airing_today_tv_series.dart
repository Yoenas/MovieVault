import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class AiringTodayTvSeries extends ConsumerWidget {
  const AiringTodayTvSeries({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureAiringTodayTvSeries = ref.watch(airingTodayTvSeriesProvider);
    return Column(
      children: [
        RowSeeAll(
            titleList: 'Airing Today TV Series',
            onSeeAll: () {
              ref.read(mediaTypeProvider.notifier).state = 'TV';
              navigatePushTo(context, destination: const SeeAllScreen());
            }),
        futureAiringTodayTvSeries.when(
          data: (data) => HListMovieBuilder(
              listMovie: data.list,
              onItemTap: (index) {
                final dataMovieItem = data.list[index];
                ref.read(idMovieProvider.notifier).state = dataMovieItem.id;
                ref.read(mediaTypeProvider.notifier).state =
                    dataMovieItem.mediaType;
                navigatePushTo(
                  context,
                  destination: const DetailContainerScreen(),
                );
              }),
          error: (error, stackTrace) =>
              CustomErrorWidget(errorMessage: 'An error has occured.'),
          loading: () => LoadingWidget(),
        ),
      ],
    );
  }
}
