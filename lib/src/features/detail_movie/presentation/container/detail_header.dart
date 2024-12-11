import 'dart:ui';

import 'package:movie_vault/src/commons.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key, required this.dataDetail});
  final DetailData dataDetail;

  @override
  Widget build(BuildContext context) {
    final detailMovie = dataDetail.detailMovie;
    final detailTv = dataDetail.detailTv;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 35),
            // Image Poster
            child: CachedImageNetworkBuilder(
              (detailMovie != null)
                  ? detailMovie.posterPath
                  : detailTv?.posterPath ?? '',
              height: double.infinity,
              width: double.infinity,
              onImageBuilder: (context, imageProvider) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.black.withOpacity(0.0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        // Black Shadow Foreground
        Padding(
          padding: const EdgeInsets.only(bottom: 35),
          child: Container(
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
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        // Content Detail Film
        Positioned(
          left: 8,
          right: 8,
          bottom: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image Landscape
              CachedImageNetworkBuilder(
                (detailMovie != null)
                    ? detailMovie.backdropPath
                    : detailTv?.backdropPath ?? '',
                height: 150,
                width: 240,
                onImageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Overview
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Text(
                    (detailMovie != null)
                        ? detailMovie.overview
                        : detailTv?.overview ?? '',
                    style: textThemeUtil(context)
                        .bodyMedium
                        ?.copyWith(color: MyColors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Info Film & Add to Watch List
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Media Type
                  Icon(
                    (detailMovie != null)
                        ? Icons.local_movies_rounded
                        : Icons.live_tv_rounded,
                    size: 30,
                    color: MyColors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    (detailMovie != null) ? 'MOVIE' : 'TV',
                    style: textThemeUtil(context).bodyMedium?.copyWith(
                        color: MyColors.greyScale20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 16),
                  // add to watch list
                  BookmarkListTile(dataDetail: dataDetail),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
