import 'package:movie_vault/src/commons.dart';

class CustomIndicatorCarousel extends StatelessWidget {
  const CustomIndicatorCarousel(
      {super.key, required this.currentIndex, required this.itemCount});
  final int currentIndex;
  // final List<DataFilm> trendingMovies;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        // currentIndex re-assign every time page changed
        // change container's color & shape at index value
        return currentIndex == index
            // Active indicator
            ? Container(
                width: 24,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.primary,
                ),
              )
            // Inactive indicators
            : Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.lineLight,
                ),
              );
      }),
    );
  }
}
