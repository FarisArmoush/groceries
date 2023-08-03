part of '../update_email.dart';

class UpdateEmailTextField extends StatelessWidget {
  const UpdateEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateEmailCubit, UpdateEmailState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New Email',
          onChanged: (email) =>
              context.read<UpdateEmailCubit>().emailChanged(email),
          errorText: state.email.displayError,
          validator: (value) => state.email.validator(value),
        );
      },
    );
  }
}
