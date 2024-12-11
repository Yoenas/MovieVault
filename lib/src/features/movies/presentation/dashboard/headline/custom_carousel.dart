import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class CustomCarousel extends ConsumerStatefulWidget {
  const CustomCarousel({super.key});

  @override
  ConsumerState<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends ConsumerState<CustomCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final futureListTrending = ref.watch(trendingListProvider);
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: futureListTrending.when(
        // success
        data: (data) => Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: data.listTrending.length,
                controller: PageController(
                  initialPage: _currentIndex,
                  viewportFraction: 1,
                ),
                onPageChanged: (index) {
                  setState(() {
                    // change value of _currentIndex and sent to IndicatorBuilder
                    _currentIndex = index;
                  });
                },
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: CustomImageCarousel(
                          trendingMovie: data.listTrending[index]),
                    )),
              ),
            ),
            const SizedBox(height: 16),
            CustomIndicatorCarousel(
              currentIndex: _currentIndex,
              itemCount: data.listTrending.length,
            ),
          ],
        ),
        // error
        error: (error, stackTrace) =>
            CustomErrorWidget(errorMessage: 'An error has occured.'),
        // loading
        loading: () => LoadingWidget(),
      ),
    );
  }
}
