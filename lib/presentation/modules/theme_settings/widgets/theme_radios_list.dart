part of '../theme_settings.dart';

class ThemeRadiosList extends StatelessWidget {
  const ThemeRadiosList({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPrimaryBox(
      child: ListView(
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: List.generate(
          _themes.length,
          (index) {
            final themeModel = _themes[index];
            return ThemeRadio(
              title: themeModel.title,
              value: themeModel.themeMode,
              groupValue: context.watch<ThemeCubit>().state,
              // TODO(FarisArmoush): Test
              onChanged: (theme) => context.read<ThemeCubit>().setTheme(
                    theme ?? ThemeMode.system,
                  ),
            );
          },
        ),
      ),
    );
  }

  List<AppThemeModel> get _themes {
    return [
      AppThemeModel(
        title: AppTranslations.theme.lightMode,
        themeMode: ThemeMode.light,
      ),
      AppThemeModel(
        title: AppTranslations.theme.darkMode,
        themeMode: ThemeMode.dark,
      ),
      AppThemeModel(
        title: AppTranslations.theme.systemMode,
        themeMode: ThemeMode.system,
      ),
    ];
  }
}
