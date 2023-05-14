part of 'app_themes.dart';

class _AppAppBarThemeData {
  static const light = AppBarTheme(
    iconTheme: IconThemeData(
      color: AppColors.black,
    ),
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    elevation: 0,
    centerTitle: true,
    backgroundColor: AppColors.white,
  );
  static final dark = AppBarTheme(
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
    backgroundColor: AppColors.darkGrey,
  );
}
