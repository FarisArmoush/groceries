part of 'update_password_form.dart';

class _UpdatePasswordTextField extends StatelessWidget {
  const _UpdatePasswordTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePasswordCubit, UpdatePasswordState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New Password',
          onChanged: (email) =>
              context.read<UpdatePasswordCubit>().emailChanged(email),
          errorText: state.email.error,
          validator: (value) => state.email.validator(value),
        );
      },
    );
  }
}
