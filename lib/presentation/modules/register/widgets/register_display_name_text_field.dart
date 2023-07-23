import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class RegisterDisplayNameTextField extends StatelessWidget {
  const RegisterDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: const Duration(milliseconds: 1000),
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
            labelText: AppTranslations.username,
            errorText: state.displayName.displayError,
            validator: (value) => state.displayName.validator(value),
          );
        },
      ),
    );
  }
}
