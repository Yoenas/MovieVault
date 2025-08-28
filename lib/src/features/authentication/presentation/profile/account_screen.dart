import 'package:movie_vault/src/common_widgets/avatar_cached_image_builder.dart';
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
              // FIXME: Uncomment when the feature is available
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.more_vert,
              //     color: MyColors.greyScale50,
              //   ),
              // ),
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
                          : AvatarCachedImageBuilder(
                              height: 50,
                              width: 50,
                              imageUrl: dataUser.imageUrl,
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
                            : () => ref
                                .read(accountScreenControllerProvider.notifier)
                                .signOut(),
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: state.isLoading
                            ? CircularProgressIndicator()
                            : Text('Sign Out'),
                      ),
                    ),
                  ),

                  // Delete Account
                  const SizedBox(height: 8),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: TextButton(
                        onPressed: state.isLoading
                            ? null
                            : () async {
                                final shouldDelete = await showDialog<bool>(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text("Delete Account"),
                                    content: const Text(
                                        "Are you sure you want to delete your account? This action cannot be undone."),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(false),
                                        child: const Text("Cancel"),
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(true),
                                        child: const Text(
                                          "Delete",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ],
                                  ),
                                );

                                if (shouldDelete == true) {
                                  // Trigger delete account
                                  await ref
                                      .read(accountScreenControllerProvider
                                          .notifier)
                                      .deleteAccount();
                                }
                              },
                        child: state.isLoading
                            ? CircularProgressIndicator()
                            : Text(
                                'Delete Account',
                                style: TextStyle(color: MyColors.error),
                              ),
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
