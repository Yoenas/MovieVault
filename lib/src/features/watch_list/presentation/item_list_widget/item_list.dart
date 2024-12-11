import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class ItemList extends ConsumerWidget {
  const ItemList({
    super.key,
    required this.watchList,
    required this.index,
    required this.onRemove,
  });

  final List<BookmarkData> watchList;
  final int index;
  final void Function() onRemove;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          ref.read(mediaTypeProvider.notifier).state =
              (watchList[index].mediaType == 'MOVIE') ? 'MOVIE' : 'TV';
          ref.read(idMovieProvider.notifier).state = watchList[index].id;
          navigatePushTo(
            context,
            destination: const DetailContainerScreen(),
          );
        },
        child: Card(
          elevation: 4,
          clipBehavior: Clip.hardEdge,
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // image
                        CachedImageNetworkBuilder(
                          (watchList[index].backdropPath != '')
                              ? watchList[index].backdropPath
                              : watchList[index].posterPath,
                          height: 100,
                          width: 160,
                          onImageBuilder: (context, imageProvider) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // title
                              Text(
                                watchList[index].title,
                                style: textThemeUtil(context)
                                    .bodyLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                getListGenres(watchList[index].genreIds),
                                style: textThemeUtil(context).bodyMedium,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                watchList[index].runtime,
                                style: textThemeUtil(context).bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // remove button
                      RemoveWatchListButton(
                          dataItem: watchList[index], onRemove: onRemove),
                      // finish watch button
                      FinishWatchButton(dataItem: watchList[index]),
                    ],
                  ),
                ],
              ),
              ExpandableText(
                content: watchList[index].overview,
                backgroundColor: Theme.of(context).colorScheme.surface,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
