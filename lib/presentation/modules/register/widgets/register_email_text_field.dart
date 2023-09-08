part of '../register.dart';

class RegisterEmailTextField extends StatelessWidget {
  const RegisterEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.email != current.email;
      },
      builder: (context, state) {
        return AppTextField(
          onChanged: (email) {
            context.read<RegisterCubit>().emailChanged(email);
          },
          prefixIcon: Assets.svg.icMail.svg(
            color: context.theme.inputDecorationTheme.prefixIconColor,
            fit: BoxFit.scaleDown,
          ),
          keyboardType: TextInputType.emailAddress,
          labelText: AppTranslations.general.email,
          validator: (value) => state.email.validator(value),
          errorText: state.email.displayError,
        );
      },
    );
  }
}
