import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class CarouselTrending extends ConsumerWidget {
  const CarouselTrending({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureTrending = ref.watch(moviesServiceProvider).trendingMovies();
    return FutureBuilder<TrendingListData>(
      future: futureTrending,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return CustomErrorWidget(errorMessage: 'An error has occured');
        }
        if (snapshot.hasData) {
          final dataTrending = snapshot.data!.listTrending;
          return SizedBox(
            height: 180,
            child: CarouselView(
              onTap: (index) {
                ref.read(idMovieProvider.notifier).state =
                    dataTrending[index].id;
                ref.read(mediaTypeProvider.notifier).state =
                    dataTrending[index].mediaType;
                navigatePushTo(context,
                    destination: const DetailContainerScreen());
              },
              itemExtent: MediaQuery.of(context).size.width - 140,
              children: List.generate(
                dataTrending.length,
                (index) {
                  return SizedBox(
                    height: 140,
                    width: 280,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        // image backdrop
                        Positioned.fill(
                          child: CachedImageNetworkBuilder(
                            dataTrending[index].backdropPath,
                            height: double.infinity,
                            width: double.infinity,
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
                        // shadow color
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                MyColors.black,
                                MyColors.black.withOpacity(0.8),
                                MyColors.black.withOpacity(0.5),
                                MyColors.black.withOpacity(0.3),
                                MyColors.black.withOpacity(0),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                            ),
                          ),
                        ),
                        // title & genre
                        Positioned(
                          left: 20,
                          bottom: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dataTrending[index].title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    textThemeUtil(context).bodyLarge?.copyWith(
                                          color: MyColors.white,
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                              Text(
                                getListGenres(dataTrending[index].genreIds),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: textThemeUtil(context)
                                    .bodyMedium
                                    ?.copyWith(color: MyColors.greyScale20),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: RatingScore(
                            fontSize: 12,
                            width: 45,
                            height: 45,
                            voteAverage: dataTrending[index].voteAverage,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        }
        return LoadingWidget();
      },
    );
  }
}
