part of 'app_themes.dart';

class __AppElevatedButtonThemeData {
  __AppElevatedButtonThemeData._();

  static final light = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.black;
        },
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        AppColors.white,
      ),
      overlayColor: MaterialStateProperty.all(
        AppColors.white.withOpacity(0.12),
      ),
      // textStyle: MaterialStateProperty.all<TextStyle>(
      //   AppTextStyles.regular(
      //     color: AppColors.white,
      //     fontSize: 16,
      //   ),
      // ),
      iconColor: MaterialStateProperty.all<Color>(
        AppColors.white,
      ),
    ),
  );

  static final dark = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.white;
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.white;
          }
          return AppColors.black;
        },
      ),
      overlayColor: MaterialStateProperty.all(
        AppColors.black.withOpacity(0.12),
      ),
      // textStyle: MaterialStateProperty.all<TextStyle>(
      // AppTextStyles.regular(
      //   color: AppColors.white,
      //   fontSize: 16,
      // ),
      // ),
      iconColor: MaterialStateProperty.all<Color>(
        AppColors.white,
      ),
    ),
  );
}
