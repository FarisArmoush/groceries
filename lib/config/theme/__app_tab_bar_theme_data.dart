part of 'app_themes.dart';

class _AppTabBarThemeData {
  static TabBarTheme light(BuildContext context) {
    return TabBarTheme(
      labelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.black,
        fontSize: _labelTextSize,
      ),
      splashFactory: _splashFactory,
      unselectedLabelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.lightGrey,
        fontSize: _labelTextSize,
      ),
      overlayColor: MaterialStateProperty.all(
        AppColors.white.withOpacity(0.1),
      ),
      unselectedLabelColor: AppColors.lightGrey,
      labelColor: AppColors.black,
      dividerColor: AppColors.transparent,
      indicatorColor: AppColors.lightRed,
    );
  }

  static TabBarTheme dark(BuildContext context) {
    return TabBarTheme(
      labelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.white,
        fontSize: _labelTextSize,
      ),
      splashFactory: _splashFactory,
      unselectedLabelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.lightGrey,
        fontSize: _labelTextSize,
      ),
      overlayColor: MaterialStateProperty.all(
        AppColors.white.withOpacity(0.1),
      ),
      unselectedLabelColor: AppColors.lightGrey,
      labelColor: AppColors.white,
      dividerColor: AppColors.transparent,
      indicatorColor: AppColors.darkRed,
    );
  }

  static const _splashFactory = NoSplash.splashFactory;
  static const _labelTextSize = 16.0;
}
