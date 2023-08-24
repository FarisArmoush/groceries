part of '../theme_settings.dart';

class ThemeRadiosList extends StatelessWidget {
  const ThemeRadiosList({super.key});

  @override
  Widget build(BuildContext context) {
    final groupValue = context.watch<ThemeCubit>().state;
    return FadeInAnimation(
      child: PrimaryBox(
        child: ListView(
          primary: false,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            ThemeRadio(
              title: AppTranslations.theme.lightMode,
              value: ThemeMode.light,
              groupValue: groupValue,
              onChanged: (_) => context.read<ThemeCubit>().setValue(
                    ThemeModeValue.light,
                  ),
            ),
            ThemeRadio(
              title: AppTranslations.theme.darkMode,
              value: ThemeMode.dark,
              groupValue: groupValue,
              onChanged: (_) => context.read<ThemeCubit>().setValue(
                    ThemeModeValue.dark,
                  ),
            ),
            ThemeRadio(
              title: AppTranslations.theme.systemMode,
              value: ThemeMode.system,
              groupValue: groupValue,
              onChanged: (_) => context.read<ThemeCubit>().setValue(
                    ThemeModeValue.system,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
