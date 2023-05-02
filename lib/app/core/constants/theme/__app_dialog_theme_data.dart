part of 'app_themes.dart';

class _AppDialogThemeData {
  // TODO: ADD content text style and title text style
  static final light = DialogTheme(
    backgroundColor: ColorConstants.white,
    elevation: 0,
    titleTextStyle: AppTextStyles.poppinsMedium(
      color: ColorConstants.black,
      fontSize: 22,
    ),
    contentTextStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.black,
      fontSize: 16,
    ),
  );
  static final dark = DialogTheme(
    backgroundColor: ColorConstants.darkGrey,
    elevation: 0,
    titleTextStyle: AppTextStyles.poppinsMedium(
      color: ColorConstants.white,
      fontSize: 22,
    ),
    contentTextStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.white,
      fontSize: 16,
    ),
  );
}
