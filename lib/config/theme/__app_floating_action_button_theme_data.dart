part of 'app_themes.dart';

class _AppFloatingActionButtonThemeData {
  static final light = FloatingActionButtonThemeData(
    backgroundColor: AppColors.darkRed,
    extendedTextStyle: AppTextStyles.poppinsRegular(
      color: AppColors.white,
      fontSize: 16,
    ),
  );
  static final dark = FloatingActionButtonThemeData(
    backgroundColor: AppColors.lightRed,
    extendedTextStyle: AppTextStyles.poppinsRegular(
      color: AppColors.white,
      fontSize: 16,
    ),
  );
}
