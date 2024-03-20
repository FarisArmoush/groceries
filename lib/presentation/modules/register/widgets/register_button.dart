import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.isValid != current.isValid ||
          previous.status != current.status,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: FilledButton(
            onPressed: state.isValid
                ? () => context.read<RegisterBloc>().add(
                      const RegisterEvent.register(),
                    )
                : null,
            child: Text(AppTranslations.register.register),
          ),
        );
      },
    );
  }
}
