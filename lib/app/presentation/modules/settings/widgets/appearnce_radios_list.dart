import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/blocs/theme/theme_cubit.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/appearance_radio.dart';
import 'package:groceries/app/presentation/widgets/primary_box.dart';

class AppearanceRadiosList extends StatelessWidget {
  const AppearanceRadiosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groupValue = context.watch<ThemeCubit>().state;
    return PrimaryBox(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          AppearanceRadio(
            title: AppTranslations.lightMode,
            value: ThemeMode.light,
            groupValue: groupValue,
            onChanged: (value) => context.read<ThemeCubit>().setTheme(
                  ThemeModeValue.light,
                ),
          ),
          AppearanceRadio(
            title: AppTranslations.darkMode,
            value: ThemeMode.dark,
            groupValue: groupValue,
            onChanged: (value) => context.read<ThemeCubit>().setTheme(
                  ThemeModeValue.dark,
                ),
          ),
          AppearanceRadio(
            title: AppTranslations.systemMode,
            value: ThemeMode.system,
            groupValue: groupValue,
            onChanged: (value) => context.read<ThemeCubit>().setTheme(
                  ThemeModeValue.system,
                ),
          ),
        ],
      ),
    );
  }
}
