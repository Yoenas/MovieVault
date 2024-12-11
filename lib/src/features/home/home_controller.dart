part of 'home_screen.dart';

abstract class HomeController extends State<HomeScreen> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // handling tap events on items within a nav bar by index
  void _onItemTapped(int index) {
    setState(() {
      // updates _selectedIndex
      _selectedIndex = index;
      // displays a series of pages or screens
      _pageController.jumpToPage(index);
    });
  }
}
