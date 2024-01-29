import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
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
              ? () => context.read<RegisterBloc>().add(
                    const RegisterEvent.register(),
                  )
              : null,
          child: _text(),
        );
      },
    );
  }

  Widget _text() => Text(AppTranslations.register.register);
}
