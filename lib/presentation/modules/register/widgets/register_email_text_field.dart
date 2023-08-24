part of '../register.dart';

class RegisterEmailTextField extends StatelessWidget {
  const RegisterEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 900.milliseconds,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) {
          return previous.email != current.email;
        },
        builder: (context, state) {
          return AppTextField(
            onChanged: (email) {
              context.read<RegisterCubit>().emailChanged(email);
            },
            prefixIcon: const Icon(CupertinoIcons.mail),
            keyboardType: TextInputType.emailAddress,
            labelText: AppTranslations.general.email,
            validator: (value) => state.email.validator(value),
            errorText: state.email.displayError,
          );
        },
      ),
    );
  }
}
