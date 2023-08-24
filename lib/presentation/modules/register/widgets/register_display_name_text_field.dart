part of '../register.dart';

class RegisterDisplayNameTextField extends StatelessWidget {
  const RegisterDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 1000.milliseconds,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) {
          return previous.displayName != current.displayName;
        },
        builder: (context, state) {
          return AppTextField(
            onChanged: (name) =>
                context.read<RegisterCubit>().displayNameChanged(name),
            prefixIcon: const Icon(CupertinoIcons.person_circle),
            keyboardType: TextInputType.name,
            labelText: AppTranslations.general.username,
            errorText: state.displayName.displayError,
            validator: (value) => state.displayName.validator(value),
          );
        },
      ),
    );
  }
}
