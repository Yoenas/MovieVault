import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_vault/src/commons.dart';

class CreditsScreen extends ConsumerWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureCredits = ref.watch(creditsProvider);
    return futureCredits.when(
      data: (data) {
        final casts = data.casts;
        final crews = data.crews;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Cast ',
                    style: textThemeUtil(context)
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(${casts.length})',
                    style: textThemeUtil(context).titleLarge,
                  ),
                ],
              ),
            ),
            // list casters
            ListProfile(listPeople: casts),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Crew ',
                    style: textThemeUtil(context)
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(${crews.length})',
                    style: textThemeUtil(context).titleLarge,
                  ),
                ],
              ),
            ),
            // list crews
            ListProfile(listPeople: crews),
          ],
        );
      },
      error: (error, stackTrace) {
        return CustomErrorWidget(errorMessage: 'An error has occured.');
      },
      loading: () => LoadingWidget(),
    );
  }
}
