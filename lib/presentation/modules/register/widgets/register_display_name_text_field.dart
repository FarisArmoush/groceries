part of '../register.dart';

class RegisterDisplayNameTextField extends StatelessWidget {
  const RegisterDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.displayName != current.displayName;
      },
      builder: (context, state) {
        return AppTextField(
          onChanged: (name) =>
              context.read<RegisterCubit>().displayNameChanged(name),
          prefixIcon: Assets.svg.icUser.svg(
            color: context.theme.inputDecorationTheme.prefixIconColor,
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
