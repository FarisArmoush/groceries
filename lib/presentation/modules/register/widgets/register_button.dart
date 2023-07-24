import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 600.milliseconds,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return IgnorePointer(
              child: FilledButton.icon(
                onPressed: () {},
                icon: const ButtonsLoadingIndicator(),
                label: _text(),
              ),
            );
          }
          return FilledButton(
            onPressed: state.isValid
                ? () => context.read<RegisterCubit>().register()
                : null,
            child: _text(),
          );
        },
      ),
    );
  }

  Widget _text() => FadeInAnimation(
        child: Text(AppTranslations.register),
      );
}
