part of '../theme_settings.dart';

class ThemeHeaderText extends StatelessWidget {
  const ThemeHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.theme.themeHeader,
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: context.theme.primaryColor,
        fontSize: 12,
      ),
    );
  }
}
