import 'package:movie_vault/src/commons.dart';

class ContentViewWrapper extends StatelessWidget {
  const ContentViewWrapper({
    super.key,
    required this.contentTabBarView,
  });

  final Widget contentTabBarView;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverToBoxAdapter(child: Center(child: contentTabBarView)),
          ],
        );
      },
    );
  }
}
