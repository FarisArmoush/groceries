import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/app_theme_model/app_theme_model.dart';
import 'package:groceries/presentation/modules/theme_settings/cubit/theme_cubit.dart';
import 'package:groceries/presentation/modules/theme_settings/widgets/theme_radio.dart';
import 'package:groceries/presentation/widgets/app_primary_box.dart';

class ThemeRadiosList extends StatelessWidget {
  const ThemeRadiosList({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPrimaryBox(
      child: ListView(
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsetsDirectional.zero,
        children: List.generate(
          _themes.length,
          (index) {
            final themeModel = _themes[index];
            return ThemeRadio(
              title: themeModel.title,
              value: themeModel.themeMode,
              groupValue: context.watch<ThemeCubit>().state,
              onChanged: (theme) => context.read<ThemeCubit>().setTheme(theme!),
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
