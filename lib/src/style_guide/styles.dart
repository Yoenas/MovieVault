import 'package:movie_vault/src/commons.dart';

// System Styles
const kStatusBarLightModeOn = SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.light,
);
const kStatusBarDarkModeOn = SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark,
);
final kDisableElevatedButton = ElevatedButton.styleFrom(
  backgroundColor: MyColors.greyScale10,
  foregroundColor: MyColors.greyScale50,
  padding: const EdgeInsets.symmetric(vertical: 20),
  textStyle: TextStyle(fontSize: 16),
  elevation: 0,
);
TextStyle get mHintStyle {
  return TextStyle(fontSize: 12, color: MyColors.greyScale50);
}
