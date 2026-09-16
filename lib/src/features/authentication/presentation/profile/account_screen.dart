import 'package:movie_vault/src/common_widgets/avatar_cached_image_builder.dart';
import 'package:movie_vault/src/commons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth_repository.dart';
import 'link_provider_controller.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountScreenControllerProvider);
    final userProfile = ref.watch(userProfileProvider);

    // Listen for link provider results
    ref.listen(linkProviderControllerProvider, (prev, next) {
      if (next is AsyncData && prev is AsyncLoading) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account linked successfully!')),
        );
        // Refresh the profile to update linked providers display
        ref.invalidate(userProfileProvider);
      } else if (next is AsyncError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to link: ${next.error}')),
        );
      }
    });

    return userProfile.when(
      data: (dataUser) {
        final hasPassword = ref.watch(hasPasswordProvider);
        final hasGoogle = ref.watch(hasGoogleProvider);

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Profile',
              style: textThemeUtil(
                context,
              ).titleMedium?.copyWith(fontWeight: FontWeight.bold),
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
                            MyColors.primary.withValues(alpha: 0.55),
                            MyColors.primary.withValues(alpha: 0.65),
                            MyColors.primary.withValues(alpha: 0.9),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: dataUser.imageUrl == ''
                          ? Center(
                              child: Text(
                                dataUser.name[0].toUpperCase(),
                                style: textThemeUtil(context).displayLarge
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

                  // --- Link Providers Section ---
                  if (!hasPassword || !hasGoogle) ...[
                    const SizedBox(height: 24),
                    Text(
                      'Link Accounts',
                      style: textThemeUtil(
                        context,
                      ).titleSmall?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),

                    // Set Password button (for Google-only users)
                    if (!hasPassword)
                      Center(
                        child: SizedBox(
                          width: 500,
                          child: OutlinedButton.icon(
                            onPressed: () => _showSetPasswordDialog(
                              context,
                              ref,
                              dataUser.email,
                            ),
                            icon: const Icon(Icons.lock_outline),
                            label: const Text('Set Password'),
                          ),
                        ),
                      ),

                    if (!hasPassword && !hasGoogle) const SizedBox(height: 8),

                    // Link with Google button (for email/password-only users)
                    if (!hasGoogle)
                      Center(
                        child: SizedBox(
                          width: 500,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              ref
                                  .read(linkProviderControllerProvider.notifier)
                                  .linkGoogle();
                            },
                            icon: SvgPicture.asset(
                              'assets/svg/auth/google.svg',
                              width: 20,
                              height: 20,
                            ),
                            label: const Text('Link with Google'),
                          ),
                        ),
                      ),
                  ],

                  // Sign Out
                  const SizedBox(height: 24),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: ElevatedButton(
                        onPressed: state.isLoading
                            ? null
                            : () => ref
                                  .read(
                                    accountScreenControllerProvider.notifier,
                                  )
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
                                      "Are you sure you want to delete your account? This action cannot be undone.",
                                    ),
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
                                      .read(
                                        accountScreenControllerProvider
                                            .notifier,
                                      )
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
      error: (error, stackTrace) =>
          Center(child: CustomErrorWidget(errorMessage: 'errorMessage $error')),
      loading: () => Center(child: LoadingWidget()),
    );
  }

  void _showSetPasswordDialog(
    BuildContext context,
    WidgetRef ref,
    String userEmail,
  ) {
    final formKey = GlobalKey<FormState>();
    final passwordController = TextEditingController();
    final confirmController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) {
        bool obscurePassword = true;
        bool obscureConfirm = true;

        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Set Password'),
              content: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Set a password so you can also sign in with your email and password.',
                      style: textThemeUtil(context).bodySmall,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      obscureText: obscurePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: '******',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () => setState(
                            () => obscurePassword = !obscurePassword,
                          ),
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      validator: (value) =>
                          _validatePassword(value, isConfirm: false),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: confirmController,
                      obscureText: obscureConfirm,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: '******',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              setState(() => obscureConfirm = !obscureConfirm),
                          icon: Icon(
                            obscureConfirm
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      validator: (value) {
                        final baseError = _validatePassword(
                          value,
                          isConfirm: true,
                        );
                        if (baseError != null) return baseError;
                        if (value != passwordController.text) {
                          return 'Passwords don\'t match';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Min 6 chars, 1 uppercase, 1 lowercase, 1 number, 1 special char (!@#\\\$&*~)',
                      style: textThemeUtil(context).bodySmall,
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  child: const Text('Cancel'),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(dialogContext).pop();
                        ref
                            .read(linkProviderControllerProvider.notifier)
                            .linkPassword(userEmail, passwordController.text);
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text('Confirm'),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  String? _validatePassword(String? value, {required bool isConfirm}) {
    if (value == null || value.isEmpty) return 'Please input password.';
    if (!Validators.passwordUpperCase(value)) {
      return 'Should contain at least 1 UPPERCASE character';
    }
    if (!Validators.passwordLowerCase(value)) {
      return 'Should contain at least 1 lowercase character';
    }
    if (!Validators.passwordNumber(value)) {
      return 'Should contain at least 1 number 0-9';
    }
    if (!Validators.passwordSpecialCharacter(value)) {
      return 'Should contain at least 1 Special Character !@#\\\$&*~';
    }
    if (value.length < 6) return 'Must be at least 6 characters in length';
    return null;
  }
}
