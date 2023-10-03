part of '../update_email.dart';

class UpdateEmailTextField extends StatelessWidget {
  const UpdateEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateEmailBloc, UpdateEmailState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New Email',
          onChanged: (value) => context.read<UpdateEmailBloc>().add(
                UpdateEmailEvent.emailChanged(value),
              ),
          errorText: state.email.displayError,
          validator: (value) => state.email.validator(value),
        );
      },
    );
  }
}
