import 'package:movie_vault/src/commons.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.activeIconPath,
    required this.inactiveIconPath,
    required this.onTap,
  });

  final int index;
  final int currentIndex;
  final String activeIconPath;
  final String inactiveIconPath;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      // will be call a function that handle item tapped
      // and give an index which item was tapped to that function
      onTap: () => onTap(index),
      child: Padding(
        // set how wide area onTap can be triggered when user tapped item
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            currentIndex == index
                ? SvgPicture.asset(
                    activeIconPath,
                    width: 24,
                    height: 24,
                  )
                : SvgPicture.asset(
                    inactiveIconPath,
                    width: 24,
                    height: 24,
                  ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? MyColors.primary
                    : Colors.transparent, // Indicator line
                borderRadius: BorderRadius.circular(5),
              ),
              width: 24,
              height: 3,
            ),
          ],
        ),
      ),
    );
  }
}
