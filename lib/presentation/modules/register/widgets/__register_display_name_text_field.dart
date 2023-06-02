part of 'register_form.dart';

class _RegisterDisplayNameTextField extends StatelessWidget {
  const _RegisterDisplayNameTextField();

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
          prefixIcon: const Icon(CupertinoIcons.person_circle),
          keyboardType: TextInputType.name,
          labelText: AppTranslations.username,
          errorText: state.displayName.error,
          validator: (value) => state.displayName.validator(value),
        );
      },
    );
  }
}
