import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class RegisterDisplayNameTextField extends StatelessWidget {
  const RegisterDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) {
        return previous.displayName != current.displayName;
      },
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: AppTextField(
            focusNode: state.nameNode,
            onChanged: (value) => context.read<RegisterBloc>().add(
                  RegisterEvent.updateDisplayName(value),
                ),
            prefixIcon: Assets.icons.user.svg(
              colorFilter: ColorFilter.mode(
                context.theme.inputDecorationTheme.prefixIconColor!,
                BlendMode.srcIn,
              ),
              fit: BoxFit.scaleDown,
            ),
            keyboardType: TextInputType.name,
            labelText: Translations.general.username,
            errorText: state.displayName.displayError,
            validator: (value) => state.displayName.validator(value),
          ),
        );
      },
    );
  }
}
