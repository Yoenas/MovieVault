import 'package:movie_vault/src/commons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarouselRecommendations extends ConsumerWidget {
  const CarouselRecommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureRecommendation =
        ref.read(detailServiceProvider).getRecommendations();
    return SizedBox(
      height: 200,
      child: FutureBuilder<List<MovieData>>(
        future: futureRecommendation,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return CustomErrorWidget(errorMessage: 'An error has occurred!');
          }
          if (snapshot.hasData) {
            final recommmendedMovies = snapshot.data!;
            return CarouselView(
              onTap: (value) {
                ref.read(idMovieProvider.notifier).state =
                    recommmendedMovies[value].id;
                ref.read(mediaTypeProvider.notifier).state =
                    recommmendedMovies[value].mediaType;
                navigateReplaceTo(
                  context,
                  destination: const DetailContainerScreen(),
                );
              },
              itemExtent: 250,
              elevation: 4,
              children: List.generate(
                (recommmendedMovies.isNotEmpty || recommmendedMovies.length > 1)
                    ? recommmendedMovies.length - 1
                    : 0,
                (index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // image
                      Expanded(
                        child: SizedBox(
                          height: 140,
                          width: 300,
                          child: CachedImageNetworkBuilder(
                            recommmendedMovies[index].backdropPath,
                            height: 140,
                            width: 300,
                            onImageBuilder: (context, imageProvider) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      // row title - rating score
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8, top: 4, left: 12, right: 12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 32),
                                // title
                                child: Text(
                                  recommmendedMovies[index].title,
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: textThemeUtil(context).titleSmall,
                                ),
                              ),
                            ),
                            // rating score
                            Text(
                              '${(recommmendedMovies[index].voteAverage / 10 * 100).toStringAsFixed(0)}%',
                              textAlign: TextAlign.end,
                              maxLines: 1,
                              softWrap: true,
                              style: textThemeUtil(context).titleSmall,
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }
          return Center(child: Text('There is no recommendations.'));
        },
      ),
    );
  }
}
