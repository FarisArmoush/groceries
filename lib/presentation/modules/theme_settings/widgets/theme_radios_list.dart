import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/theme/theme_cubit.dart';
import 'package:groceries/presentation/modules/theme_settings/widgets/theme_radio.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/primary_box.dart';

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
              title: AppTranslations.lightMode,
              value: ThemeMode.light,
              groupValue: groupValue,
              onChanged: (_) => context.read<ThemeCubit>().setValue(
                    ThemeModeValue.light,
                  ),
            ),
            ThemeRadio(
              title: AppTranslations.darkMode,
              value: ThemeMode.dark,
              groupValue: groupValue,
              onChanged: (_) => context.read<ThemeCubit>().setValue(
                    ThemeModeValue.dark,
                  ),
            ),
            ThemeRadio(
              title: AppTranslations.systemMode,
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
