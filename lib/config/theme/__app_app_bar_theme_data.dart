part of 'app_themes.dart';

class _AppAppBarThemeData {
  static AppBarTheme light(BuildContext context) {
    return AppBarTheme(
      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),
      surfaceTintColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.black,
        fontSize: _fontSize,
      ),
      backgroundColor: AppColors.white,
    );
  }

  static AppBarTheme dark(BuildContext context) {
    return AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white.withOpacity(0.99),
      ),
      actionsIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      surfaceTintColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.white,
        fontSize: _fontSize,
      ),
      backgroundColor: AppColors.darkGrey,
    );
  }

  static const _fontSize = 20.0;
}
