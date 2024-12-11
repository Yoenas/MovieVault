import 'package:movie_vault/src/commons.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({
    super.key,
    required this.listPeople,
  });

  final List<CastData> listPeople;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemExtent: 180,
        physics: BouncingScrollPhysics(),
        itemCount: (listPeople.isNotEmpty) ? listPeople.length : 0,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: ProfileCard(people: listPeople[index]),
          );
        },
      ),
    );
  }
}
