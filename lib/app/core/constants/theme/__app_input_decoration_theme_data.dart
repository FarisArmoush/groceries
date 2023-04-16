part of 'app_themes.dart';

class _AppInputDecorationThemeData {
  static final light = InputDecorationTheme(
    floatingLabelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.black,
      fontSize: 16,
    ),
    suffixIconColor: ColorConstants.black,
    errorStyle: AppTextStyles.poppinsMedium(
      color: ColorConstants.red,
      fontSize: 12,
    ),
    labelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.lightGrey,
      fontSize: 16,
    ),
    enabledBorder: AppBorders.tfCircularBorder(),
    border: AppBorders.tfCircularBorder(),
    focusedBorder: AppBorders.tfActiveCircularBorder(),
    errorBorder: AppBorders.tfErrorCircularBorder(),
    disabledBorder: AppBorders.tfCircularBorder(),
    focusedErrorBorder: AppBorders.tfErrorCircularBorder(),
  );

  static final dark = InputDecorationTheme(
    floatingLabelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.white,
      fontSize: 16,
    ),
    suffixIconColor: ColorConstants.white,
    errorStyle: AppTextStyles.poppinsMedium(
      fontSize: 12,
      color: ColorConstants.red,
    ),
    labelStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.lightGrey,
      fontSize: 16,
    ),
    enabledBorder: AppBorders.tfCircularBorder(),
    border: AppBorders.tfCircularBorder(),
    focusedBorder: AppBorders.tfActiveCircularBorder(),
    errorBorder: AppBorders.tfErrorCircularBorder(),
    disabledBorder: AppBorders.tfCircularBorder(),
    focusedErrorBorder: AppBorders.tfErrorCircularBorder(),
  );
}
