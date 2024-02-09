import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RegisterDisplayNameTextField extends StatelessWidget {
  const RegisterDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) {
        return previous.displayName != current.displayName;
      },
      builder: (context, state) {
        return AppTextField(
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
          labelText: AppTranslations.general.username,
          errorText: state.displayName.displayError,
          validator: (value) => state.displayName.validator(value),
        );
      },
    );
  }
}
