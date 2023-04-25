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
    enabledBorder: _circularBorder(),
    border: _circularBorder(),
    disabledBorder: _circularBorder(),
    focusedBorder: _activeCircularBorder(),
    errorBorder: _errorCircularBorder(),
    focusedErrorBorder: _errorCircularBorder(),
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
    enabledBorder: _circularBorder(),
    border: _circularBorder(),
    disabledBorder: _circularBorder(),
    focusedBorder: _activeCircularBorder(),
    errorBorder: _errorCircularBorder(),
    focusedErrorBorder: _errorCircularBorder(),
  );

  static OutlineInputBorder _circularBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.lightGrey,
      ),
      borderRadius: BorderRadius.circular(55),
    );
  }

  static OutlineInputBorder _activeCircularBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red.shade500,
      ),
      borderRadius: BorderRadius.circular(55),
    );
  }

  static OutlineInputBorder _errorCircularBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.red,
      ),
      borderRadius: BorderRadius.circular(55),
    );
  }
}
