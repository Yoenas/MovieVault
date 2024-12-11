import 'package:movie_vault/src/commons.dart';

class HListMovieBuilder extends StatelessWidget {
  const HListMovieBuilder({
    super.key,
    required this.listMovie,
    required this.onItemTap,
  });

  final List<MovieData> listMovie;
  final void Function(int index) onItemTap;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 285),
      // horizontal list view builder
      child: ListView.builder(
        itemCount: (listMovie.isNotEmpty) ? listMovie.length : 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final MovieData film = listMovie[index];
          // item list
          return Wrap(
            children: [
              SizedBox(
                width: 150,
                child: InkWell(
                  onTap: () {
                    onItemTap(index);
                  },
                  // main body item
                  child: Card(
                    color: MyColors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // poster movie
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedImageNetworkBuilder(
                            film.posterPath,
                            height: 200,
                            width: 120,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          // title movie
                          child: Text(
                            film.title,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: textThemeUtil(context)
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          // genres movie
                          child: Text(
                            getListGenres(film.genreIds),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textThemeUtil(context)
                                .bodyMedium
                                ?.copyWith(color: MyColors.greyScale70),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
