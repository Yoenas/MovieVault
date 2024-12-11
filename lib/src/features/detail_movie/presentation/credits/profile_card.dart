import 'package:movie_vault/src/commons.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.people,
  });

  final CastData people;

  @override
  Widget build(BuildContext context) {
    final String role;
    if (people.character.isNotEmpty) {
      role = people.character;
    } else {
      role = people.job;
    }
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            top: -50,
            left: 0,
            right: 0,
            child: CachedNetworkImage(
              imageUrl: 'https://image.tmdb.org/t/p/w500${people.profilePath}',
              placeholder: (context, _) => SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: CircularProgressIndicator(
                    color: MyColors.primary,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => SvgPicture.asset(
                'assets/svg/bottom_nav/ic_user_active.svg',
                height: 75,
                width: 75,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: MyColors.white,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    people.name,
                    maxLines: 1,
                    style: textThemeUtil(context)
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                    scrollPhysics: BouncingScrollPhysics(),
                  ),
                  // original name
                  if (people.name != people.originalName)
                    Text(
                      people.originalName,
                      maxLines: 2,
                      style: textThemeUtil(context).bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  const SizedBox(height: 4),
                  Text(
                    'as',
                    style: textThemeUtil(context).bodyMedium,
                  ),
                  // character if cast
                  Text(
                    role,
                    style: textThemeUtil(context)
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
