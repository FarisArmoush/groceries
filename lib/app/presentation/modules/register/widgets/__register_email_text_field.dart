part of 'register_form.dart';

class _RegisterEmailTextField extends StatelessWidget {
  const _RegisterEmailTextField({Key? key}) : super(key: key);

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
          keyboardType: TextInputType.emailAddress,
          labelText: 'Email',
          validator: (value) => state.email.validator(value),
          errorText: state.email.error,
        );
      },
    );
  }
}
