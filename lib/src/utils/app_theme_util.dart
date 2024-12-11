import 'package:movie_vault/src/commons.dart';

/// **Title**
///
/// H4 = titleLarge 24px
///
/// H5 = titleMedium 20px
///
/// H6 = titleSmall 18px
///
/// **Body**
///
/// XL = titleSmall 18px
///
/// L = bodyLarge 16px
///
/// M = bodyMedium 14px
///
/// S = bodySmall 12px
TextTheme textThemeUtil(BuildContext context) {
  return Theme.of(context).textTheme;
}
