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
    enabledBorder: _circularBorder(),
    border: _circularBorder(),
    disabledBorder: _circularBorder(),
    focusedBorder: _activeCircularBorder(),
    errorBorder: _errorCircularBorder(),
    focusedErrorBorder: _errorCircularBorder(),
  );

  static final dark = InputDecorationTheme(
    floatingLabelStyle: AppTextStyles.poppinsRegular(
      color: AppColors.white,
      fontSize: 16,
    ),
    suffixIconColor: AppColors.white,
    errorStyle: AppTextStyles.poppinsMedium(
      fontSize: 12,
      color: AppColors.darkRed,
    ),
    labelStyle: AppTextStyles.poppinsRegular(
      color: AppColors.lightGrey,
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
      borderSide: const BorderSide(
        color: AppColors.lightGrey,
      ),
      borderRadius: BorderRadius.circular(radiusValue),
    );
  }

  static OutlineInputBorder _activeCircularBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.lightRed,
      ),
      borderRadius: BorderRadius.circular(radiusValue),
    );
  }

  static OutlineInputBorder _errorCircularBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.darkRed,
      ),
      borderRadius: BorderRadius.circular(radiusValue),
    );
  }

  static const radiusValue = 12.0;
}
