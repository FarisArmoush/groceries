part of 'app_themes.dart';

class _AppTabBarThemeData {
  static final light = TabBarTheme(
    labelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.black,
      fontSize: _labelTextSize,
    ),
    splashFactory: _splashFactory,
    unselectedLabelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.lightGrey,
      fontSize: _labelTextSize,
    ),
    overlayColor: MaterialStateProperty.all(
      ColorConstants.white.withOpacity(0.1),
    ),
    unselectedLabelColor: ColorConstants.lightGrey,
    labelColor: ColorConstants.black,
    dividerColor: Colors.transparent,
    indicatorColor: Colors.red,
  );

  static final dark = TabBarTheme(
    labelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.white,
      fontSize: _labelTextSize,
    ),
    splashFactory: _splashFactory,
    unselectedLabelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.lightGrey,
      fontSize: _labelTextSize,
    ),
    overlayColor: MaterialStateProperty.all(
      ColorConstants.white.withOpacity(0.1),
    ),
    unselectedLabelColor: ColorConstants.lightGrey,
    labelColor: ColorConstants.white,
    dividerColor: Colors.transparent,
    indicatorColor: ColorConstants.red,
  );
  static const _splashFactory = NoSplash.splashFactory;
  static const _labelTextSize = 16.0;
}
