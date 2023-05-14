part of 'app_themes.dart';

class _AppTabBarThemeData {
  static final light = TabBarTheme(
    // labelStyle: AppTextStyles.regular(
    //   color: AppColors.black,
    //   fontSize: _labelTextSize,
    // ),
    splashFactory: _splashFactory,
    // unselectedLabelStyle: AppTextStyles.regular(
    //   color: AppColors.lightGrey,
    //   fontSize: _labelTextSize,
    // ),
    overlayColor: MaterialStateProperty.all(
      AppColors.white.withOpacity(0.1),
    ),
    unselectedLabelColor: AppColors.lightGrey,
    labelColor: AppColors.black,
    dividerColor: Colors.transparent,
    indicatorColor: AppColors.lightRed,
  );

  static final dark = TabBarTheme(
    // labelStyle: AppTextStyles.regular(
    //   color: AppColors.white,
    //   fontSize: _labelTextSize,
    // ),
    splashFactory: _splashFactory,
    // unselectedLabelStyle: AppTextStyles.regular(
    //   color: AppColors.lightGrey,
    //   fontSize: _labelTextSize,
    // ),
    overlayColor: MaterialStateProperty.all(
      AppColors.white.withOpacity(0.1),
    ),
    unselectedLabelColor: AppColors.lightGrey,
    labelColor: AppColors.white,
    dividerColor: Colors.transparent,
    indicatorColor: AppColors.darkRed,
  );
  static const _splashFactory = NoSplash.splashFactory;
  // static const _labelTextSize = 16.0;
}
