part of 'app_themes.dart';

class _AppListTileThemeData {
  static ListTileThemeData light(BuildContext context) {
    return ListTileThemeData(
      tileColor: AppColors.veryLightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        fontSize: 16,
        color: AppColors.black,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.lightGrey,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.black,
      ),
    );
  }

  static ListTileThemeData dark(BuildContext context) {
    return ListTileThemeData(
      tileColor: AppColors.cardDarkGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        fontSize: 16,
        color: AppColors.white,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.lightGrey,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.white,
      ),
    );
  }
}
