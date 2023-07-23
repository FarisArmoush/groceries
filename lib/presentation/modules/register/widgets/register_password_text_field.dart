import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class RegisterPasswordTextField extends StatelessWidget {
  const RegisterPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return AppTextField(
            obscureText: true,
            prefixIcon: const Icon(CupertinoIcons.lock),
            autofillHints: const [AutofillHints.password],
            keyboardType: TextInputType.visiblePassword,
            onChanged: (password) {
              context.read<RegisterCubit>().passwordChanged(password);
            },
            labelText: AppTranslations.password,
            errorText: state.password.displayError,
          );
        },
      ),
    );
  }
}
