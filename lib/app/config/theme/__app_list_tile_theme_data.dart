part of 'app_themes.dart';

class _AppListTileThemeData {
  static final light = ListTileThemeData(
    tileColor: ColorConstants.veryLightGrey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
  static final dark = ListTileThemeData(
    tileColor: ColorConstants.cardDarkGrey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
