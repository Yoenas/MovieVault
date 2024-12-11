import 'package:movie_vault/src/commons.dart';

void navigatePushTo(BuildContext context, {required Widget destination}) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => destination,
    ),
  );
}

/// replace current page
void navigateReplaceTo(BuildContext context, {required Widget destination}) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => destination,
    ),
  );
}

/// converts language code into country name
String getCountryName(String code) {
  final isValidCode = kCountryLanguages.containsKey(code);
  if (!isValidCode) {
    return 'Failed identify language code.';
  }
  return kCountryLanguages[code]!;
}

/// converts genre ids List<int> into genre names String
///
/// from [1, 2, 3] become [drama, action, comedy]
String getListGenres(List<int>? genreIds) {
  var listGenre = <String>[];
  if (genreIds == null || genreIds.isEmpty) {
    return '-';
  }
  for (final id in genreIds) {
    if (kListGenres.containsKey(id)) {
      final genreName = kListGenres[id];
      listGenre.add(genreName!);
    } else {
      listGenre.add(id.toString());
    }
  }
  return listGenre.join(', ');
}

/// converts list genre from List<int> to String
///
/// from [1, 2, 3] become "1, 2, 3"
String genreIdsToString(List<int> genreIds) {
  if (genreIds.isNotEmpty) {
    final genreListString = genreIds.map((id) => id.toString()).toList();
    return genreListString.join(', ');
  } else {
    return '';
  }
}

void showSnackbar({
  required BuildContext context,
  required String content,
  required String? labelAction,
  required void Function()? action,
}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        content,
        style: textThemeUtil(context).bodyMedium?.copyWith(
              color: MyColors.greyScale20,
              overflow: TextOverflow.ellipsis,
            ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      action: SnackBarAction(
        label: labelAction ?? '',
        onPressed: action ?? () {},
      ),
      duration: Duration(seconds: 3),
      backgroundColor: MyColors.black,
    ),
  );
}
