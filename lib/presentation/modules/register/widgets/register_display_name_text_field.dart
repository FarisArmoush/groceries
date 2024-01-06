part of '../register.dart';

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
          prefixIcon: Assets.svg.icUser.svg(
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
