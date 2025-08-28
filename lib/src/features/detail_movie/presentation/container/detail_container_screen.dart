import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

part 'detail_container_controller.dart';

class DetailContainerScreen extends ConsumerStatefulWidget {
  const DetailContainerScreen({super.key});

  @override
  ConsumerState<DetailContainerScreen> createState() =>
      _DetailContainerScreenState();
}

class _DetailContainerScreenState extends DetailContainerController {
  @override
  Widget build(BuildContext context) {
    final futureDetailData = ref.watch(detailServiceProvider).getDetail();
    return Scaffold(
      body: FutureBuilder<DetailData>(
        future: futureDetailData,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: CustomErrorWidget(errorMessage: 'An error has occured'),
            );
          }
          if (snapshot.hasData) {
            final dataDetail = snapshot.data!;
            final dataDetailMovie = dataDetail.detailMovie;
            final dataDetailTv = dataDetail.detailTv;
            return NestedScrollView(
              physics: BouncingScrollPhysics(),
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverAppBar(
                      // expandedHeight: 450 + (Platform.isAndroid ? 24 : 0),
                      expandedHeight: 450,
                      floating: false,
                      automaticallyImplyLeading: false,
                      pinned: true,
                      centerTitle: true,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      elevation: 0,
                      title: Container(
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context)
                              .colorScheme
                              .surface
                              .withValues(alpha: 0.6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: Icon(Icons.arrow_back),
                            ),
                            // title movie
                            Expanded(
                              child: Text(
                                (dataDetailMovie != null)
                                    ? dataDetailMovie.title
                                    : dataDetailTv?.title ?? '',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: textThemeUtil(context)
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                            // add to watch list
                            BookmarkButton(detailData: dataDetail),
                          ],
                        ),
                      ),
                      forceElevated: false,
                      flexibleSpace: FlexibleSpaceBar(
                        background: DetailHeader(dataDetail: dataDetail),
                      ),
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(35),
                        child: TabBarBuilder(
                            tabController: _tabController, tabItems: _tabItems),
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  ContentViewWrapper(
                    contentTabBarView: DetailsScreen(
                      detailTvSeries: dataDetailTv,
                      detailMovie: dataDetailMovie,
                      mediaType: ref.watch(mediaTypeProvider),
                    ),
                  ),
                  const ContentViewWrapper(contentTabBarView: CreditsScreen()),
                  const ContentViewWrapper(
                      contentTabBarView: ReviewsFilmScreen()),
                ],
              ),
            );
          }
          return Center(child: LoadingWidget());
        },
      ),
    );
  }
}
