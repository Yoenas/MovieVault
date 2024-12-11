import 'package:movie_vault/src/commons.dart';

part 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PageView - display the content corresponding to each tab
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        // Content Screens
        // Will display UI Feature when bottom nav item selected
        children: const [
          DashboardScreen(),
          SearchScreen(),
          WatchListScreen(),
          ProfileScreen(),
        ],
      ),
      // Custom Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 24, top: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // dashboard
            BottomNavItem(
              index: 0,
              currentIndex: _selectedIndex,
              activeIconPath: 'assets/svg/bottom_nav/ic_home_active.svg',
              inactiveIconPath: 'assets/svg/bottom_nav/ic_home.svg',
              onTap: (index) => _onItemTapped(index),
            ),
            // search
            BottomNavItem(
              index: 1,
              currentIndex: _selectedIndex,
              activeIconPath: 'assets/svg/bottom_nav/ic_search_active.svg',
              inactiveIconPath: 'assets/svg/bottom_nav/ic_search.svg',
              onTap: (index) => _onItemTapped(index),
            ),
            // watch list
            BottomNavItem(
              index: 2,
              currentIndex: _selectedIndex,
              activeIconPath: 'assets/svg/bottom_nav/ic_bookmark_active.svg',
              inactiveIconPath: 'assets/svg/bottom_nav/ic_bookmark.svg',
              onTap: (index) => _onItemTapped(index),
            ),
            // profile
            BottomNavItem(
              index: 3,
              currentIndex: _selectedIndex,
              activeIconPath: 'assets/svg/bottom_nav/ic_user_active.svg',
              inactiveIconPath: 'assets/svg/bottom_nav/ic_user.svg',
              onTap: (index) => _onItemTapped(index),
            ),
          ],
        ),
      ),
    );
  }
}
