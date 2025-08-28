import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/common_widgets/avatar_cached_image_builder.dart';
import 'package:movie_vault/src/commons.dart';

class TitleDashboard extends ConsumerWidget {
  const TitleDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateChangesProvider);
    final userProfile = ref.watch(userProfileProvider);
    return authState.maybeWhen(
      data: (user) {
        return user != null
            ? TitleAppBar(
                userData: userProfile.when(
                    data: (userData) => userData,
                    error: (error, stackTrace) => null,
                    loading: () => null),
              )
            : TitleAppBar(userData: null);
      },
      error: (error, stackTrace) {
        return const Text('Something wrong.\nFailed fetch user data.');
      },
      orElse: () {
        return const CircularProgressIndicator();
      },
    );
  }
}

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key, required this.userData});
  final UserData? userData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (userData == null || userData!.imageUrl == '')
            ? CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset('assets/svg/bottom_nav/ic_user.svg',
                    width: 35, height: 35),
              )
            : AvatarCachedImageBuilder(
                imageUrl: userData!.imageUrl, height: 35, width: 35),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userData == null ? 'Hi, friends' : userData!.username,
                style: textThemeUtil(context)
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Let\'s discover your favorite movies',
                style: textThemeUtil(context)
                    .bodySmall
                    ?.copyWith(color: MyColors.greyScale40),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
