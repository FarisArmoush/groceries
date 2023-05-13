part of 'app_themes.dart';

class _AppInputDecorationThemeData {
  static final light = InputDecorationTheme(
    floatingLabelStyle: AppTextStyles.poppinsRegular(
      color: AppColors.black,
      fontSize: 16,
    ),
    suffixIconColor: AppColors.black,
    errorStyle: AppTextStyles.poppinsMedium(
      color: AppColors.darkRed,
      fontSize: 12,
    ),
    labelStyle: AppTextStyles.poppinsRegular(
      color: AppColors.lightGrey,
      fontSize: 16,
    ),
  );

  static final dark = InputDecorationTheme(
    floatingLabelStyle: AppTextStyles.poppinsRegular(
      color: AppColors.white,
      fontSize: 16,
    ),
    suffixIconColor: AppColors.white,
    errorStyle: AppTextStyles.poppinsMedium(
      fontSize: 12,
      color: AppColors.lightRed,
    ),
    labelStyle: AppTextStyles.poppinsRegular(
      color: AppColors.lightGrey,
      fontSize: 16,
    ),
  );
}
