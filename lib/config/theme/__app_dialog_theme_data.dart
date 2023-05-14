part of 'app_themes.dart';

class _AppDialogThemeData {
  static const light = DialogTheme(
    backgroundColor: AppColors.white,
    elevation: 0,
    // titleTextStyle: AppTextStyles.medium(
    //   color: AppColors.black,
    //   fontSize: 22,
    // ),
    // contentTextStyle: AppTextStyles.regular(
    //   color: AppColors.black,
    //   fontSize: 16,
    // ),
    alignment: Alignment.center,
  );
  static const dark = DialogTheme(
    backgroundColor: AppColors.darkGrey,
    elevation: 0,
    // titleTextStyle: AppTextStyles.medium(
    //   color: AppColors.white,
    //   fontSize: 22,
    // ),
    // contentTextStyle: AppTextStyles.regular(
    //   context: ,
    //   color: AppColors.white,
    //   fontSize: 16,
    // ),
  );
}
