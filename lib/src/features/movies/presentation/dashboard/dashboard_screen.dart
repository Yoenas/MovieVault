import 'package:movie_vault/src/commons.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    return Scaffold(
      appBar: AppBar(
        title: const TitleDashboard(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined, color: MyColors.greyScale50),
          ),
        ],
      ),
      body: NestedScrollView(
        // Headline: Images Carousel
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(child: CustomCarousel()),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: ListView(
            children: [
              NowPlayingMovies(),
              const SizedBox(height: 16),
              AiringTodayTvSeries(),
            ],
          ),
        ),
      ),
    );
  }
}
