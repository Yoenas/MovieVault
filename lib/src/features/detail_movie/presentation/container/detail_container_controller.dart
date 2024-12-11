part of 'detail_container_screen.dart';

abstract class DetailContainerController
    extends ConsumerState<DetailContainerScreen>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabItems = [
    Text('Details'),
    Text('Credits'),
    Text('Reviews'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabItems.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
