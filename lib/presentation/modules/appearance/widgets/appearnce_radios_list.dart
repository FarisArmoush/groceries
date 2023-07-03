import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/theme/theme_cubit.dart';
import 'package:groceries/presentation/modules/appearance/widgets/appearance_radio.dart';
import 'package:groceries/presentation/widgets/primary_box.dart';

class AppearanceRadiosList extends StatelessWidget {
  const AppearanceRadiosList({super.key});

  @override
  Widget build(BuildContext context) {
    final groupValue = context.watch<ThemeCubit>().state;
    return PrimaryBox(
      child: ListView(
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          AppearanceRadio(
            title: AppTranslations.lightMode,
            value: ThemeMode.light,
            groupValue: groupValue,
            onChanged: (_) => context.read<ThemeCubit>().set(
                  ThemeModeValue.light,
                ),
          ),
          AppearanceRadio(
            title: AppTranslations.darkMode,
            value: ThemeMode.dark,
            groupValue: groupValue,
            onChanged: (_) => context.read<ThemeCubit>().set(
                  ThemeModeValue.dark,
                ),
          ),
          AppearanceRadio(
            title: AppTranslations.systemMode,
            value: ThemeMode.system,
            groupValue: groupValue,
            onChanged: (_) => context.read<ThemeCubit>().set(
                  ThemeModeValue.system,
                ),
          ),
        ],
      ),
    );
  }
}
