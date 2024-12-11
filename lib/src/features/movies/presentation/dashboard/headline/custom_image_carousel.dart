import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class CustomImageCarousel extends ConsumerWidget {
  const CustomImageCarousel({super.key, required this.trendingMovie});

  final MovieData trendingMovie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        final dataTrending = trendingMovie;
        ref.read(idMovieProvider.notifier).state = dataTrending.id;
        ref.read(mediaTypeProvider.notifier).state = dataTrending.mediaType;
        navigatePushTo(
          context,
          destination: const DetailContainerScreen(),
        );
      },
      child: Stack(
        children: [
          CachedImageNetworkBuilder(
            // image backdrop
            trendingMovie.backdropPath,
            height: double.infinity,
            width: double.infinity,
            onImageBuilder: (context, imageProvider) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          // gradient color
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyColors.primary,
                    MyColors.primary,
                    const Color(0xFF1D51FE).withOpacity(0.75),
                    const Color(0xFF1D51FE).withOpacity(0.5),
                    const Color(0xFF1D51FE).withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            bottom: 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // media type
                      trendingMovie.mediaType,
                      style: textThemeUtil(context)
                          .titleSmall
                          ?.copyWith(color: MyColors.white),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      // title movie or tv series
                      child: Text(
                        trendingMovie.title,
                        style: textThemeUtil(context).titleMedium?.copyWith(
                            color: MyColors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 6),
                    // release date
                    Text(
                      trendingMovie.releaseDate,
                      style: textThemeUtil(context)
                          .bodyMedium
                          ?.copyWith(color: MyColors.white),
                    ),
                  ],
                ),
                // rate score
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: MyColors.white),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Users Score',
                          style: textThemeUtil(context)
                              .bodyLarge
                              ?.copyWith(color: MyColors.primary),
                        ),
                        // vote average
                        Text(
                          (trendingMovie.voteAverage == 0)
                              ? '-'
                              : trendingMovie.voteAverage.toStringAsFixed(2),
                          style: textThemeUtil(context).titleSmall?.copyWith(
                              color: MyColors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
