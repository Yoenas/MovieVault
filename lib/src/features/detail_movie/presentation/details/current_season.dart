import 'package:movie_vault/src/commons.dart';

class CurrentSeason extends StatelessWidget {
  const CurrentSeason({super.key, required this.season});
  final SeasonData season;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          'Current Season',
          style: textThemeUtil(context)
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Poster Season
            SizedBox(
              height: 180,
              width: 130,
              child: CachedImageNetworkBuilder(
                season.posterPath,
                height: 180,
                width: 130,
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
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title of current season
                  Text(
                    season.name,
                    style: textThemeUtil(context)
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  // last air Date
                  Text(
                    'Air Date: ${season.airDate}',
                    style: textThemeUtil(context).bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  // number of current season & total episode
                  Text(
                    'Season ${season.seasonNumber} • ${season.episodeCount} Episodes',
                    style: textThemeUtil(context).bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  // season's overview
                  ExpandableText(
                    content: season.overview,
                    contentStyle: textThemeUtil(context).bodyLarge,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
