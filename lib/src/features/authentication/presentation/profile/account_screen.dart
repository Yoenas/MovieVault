import 'package:movie_vault/src/commons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountScreenControllerProvider);
    final userProfile = ref.watch(userProfileProvider);
    return userProfile.when(
      data: (dataUser) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Profile',
              style: textThemeUtil(context)
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: MyColors.greyScale50,
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(height: 1.5, color: MyColors.lineLight),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // avatar
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [
                            MyColors.primary.withOpacity(0.55),
                            MyColors.primary.withOpacity(0.65),
                            MyColors.primary.withOpacity(0.9),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: dataUser.imageUrl == ''
                          ? Center(
                              child: Text(
                                dataUser.name[0].toUpperCase(),
                                style: textThemeUtil(context)
                                    .displayLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: MyColors.greyScale10,
                                    ),
                              ),
                            )
                          : CachedImageNetworkBuilder(
                              dataUser.imageUrl,
                              height: 50,
                              width: 50,
                              onImageBuilder: (context, imageProvider) {
                                return CircleAvatar(
                                  backgroundImage: imageProvider,
                                );
                              },
                            ),
                    ),
                  ),
                  // username
                  InfoSectionBuilder(
                    infoName: 'Username',
                    infoUser: dataUser.username,
                    svgPathIcon: 'assets/svg/profile.svg',
                  ),
                  // email
                  InfoSectionBuilder(
                    infoName: 'Email',
                    svgPathIcon: 'assets/svg/email.svg',
                    infoUser: dataUser.email,
                  ),
                  // name
                  InfoSectionBuilder(
                    infoName: 'Name',
                    infoUser: dataUser.name.toTitleCase(),
                  ),

                  // Sign Out
                  const SizedBox(height: 24),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: ElevatedButton(
                        onPressed: state.isLoading
                            ? null
                            : () => FirebaseAuth.instance.signOut(),
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: state.isLoading
                            ? CircularProgressIndicator()
                            : Text('Sign Out'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) => Center(
        child: CustomErrorWidget(errorMessage: 'errorMessage $error'),
      ),
      loading: () => Center(child: LoadingWidget()),
    );
  }
}
