import 'package:movie_vault/src/commons.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Your Watch List',
            style: textThemeUtil(context)
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: TabBarBuilder(
              tabItems: [
                Text('Movies'),
                Text('TV Series'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            const WatchListMovie(),
            const WatchListTv(),
          ],
        ),
      ),
    );
  }
}
