part of '../theme_settings.dart';

class ThemeHintText extends StatelessWidget {
  const ThemeHintText({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: Text(
        AppTranslations.themeHint,
        style: TextStyle(
          fontFamily: AppFonts.light(context),
          color: context.theme.hintColor,
          fontSize: 12,
        ),
      ),
    );
  }
}
