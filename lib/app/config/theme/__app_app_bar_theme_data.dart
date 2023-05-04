part of 'app_themes.dart';

class _AppAppBarThemeData {
  static final light = AppBarTheme(
    iconTheme: IconThemeData(
      color: ColorConstants.black,
    ),
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: AppTextStyles.poppinsMedium(
      color: ColorConstants.black,
      fontSize: 20,
    ),
    backgroundColor: ColorConstants.white,
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
    titleTextStyle: AppTextStyles.poppinsMedium(
      color: ColorConstants.white,
      fontSize: 20,
    ),
    backgroundColor: ColorConstants.darkGrey,
  );
}
