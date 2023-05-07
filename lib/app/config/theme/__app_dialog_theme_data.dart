part of 'app_themes.dart';

class _AppDialogThemeData {
  static final light = DialogTheme(
    backgroundColor: AppColors.white,
    elevation: 0,
    titleTextStyle: AppTextStyles.poppinsMedium(
      color: AppColors.black,
      fontSize: 22,
    ),
    contentTextStyle: AppTextStyles.poppinsRegular(
      color: AppColors.black,
      fontSize: 16,
    ),
    alignment: Alignment.center,
  );
  static final dark = DialogTheme(
    backgroundColor: AppColors.darkGrey,
    elevation: 0,
    titleTextStyle: AppTextStyles.poppinsMedium(
      color: AppColors.white,
      fontSize: 22,
    ),
    contentTextStyle: AppTextStyles.poppinsRegular(
      color: AppColors.white,
      fontSize: 16,
    ),
  );
}
