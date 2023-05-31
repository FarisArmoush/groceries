part of 'update_email_form.dart';

class _UpdateEmailTextField extends StatelessWidget {
  const _UpdateEmailTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateEmailCubit, UpdateEmailState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New username',
          onChanged: (email) =>
              context.read<UpdateEmailCubit>().emailChanged(email),
          errorText: state.email.error,
          validator: (value) => state.email.validator(value),
        );
      },
    );
  }
}
