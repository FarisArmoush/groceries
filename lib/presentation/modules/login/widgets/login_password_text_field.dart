import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/login/cubit/login_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: const Duration(milliseconds: 900),
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return AppTextField(
            prefixIcon: const Icon(CupertinoIcons.lock),
            obscureText: true,
            autofillHints: const [
              AutofillHints.password,
            ],
            keyboardType: TextInputType.visiblePassword,
            onChanged: (password) {
              context.read<LoginCubit>().passwordChanged(password);
            },
            labelText: AppTranslations.password,
            errorText: state.password.displayError,
            validator: (value) => state.password.validator(value),
          );
        },
      ),
    );
  }
}
