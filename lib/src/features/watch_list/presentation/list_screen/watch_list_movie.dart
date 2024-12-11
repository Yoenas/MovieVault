import 'package:movie_vault/src/commons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WatchListMovie extends ConsumerWidget {
  const WatchListMovie({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncWatchList = ref.watch(movieWatchListControllerProvider);
    List<BookmarkData>? watchList = [];
    return ListView.builder(
      itemCount: asyncWatchList.when(
        data: (data) {
          watchList = data;
          return data.isEmpty ? 1 : data.length;
        },
        error: (error, stackTrace) => 0,
        loading: () => 0,
      ),
      itemBuilder: (context, index) {
        // when empty
        if (watchList!.isEmpty) {
          return Container(
            height: MediaQuery.of(context).size.height - 200,
            alignment: Alignment.center,
            child: Text(
              'You don\'t have Watch List.\nMarks your Movies as Watch List first.',
              style: textThemeUtil(context).bodyLarge,
              textAlign: TextAlign.center,
            ),
          );
        }
        // has data
        return ItemList(
          key: ValueKey(watchList![index].id),
          watchList: watchList!,
          index: index,
          onRemove: () {
            // avoid rebuild widget so snackbar still get a context from itemBuilder
            showSnackbar(
              context: context,
              content: 'Success deleted ${watchList![index].title}',
              labelAction: 'Undo',
              action: () => ref
                  .read(movieWatchListControllerProvider.notifier)
                  .restoreWatchList(watchList![index]),
            );
          },
        );
      },
    );
  }
}
