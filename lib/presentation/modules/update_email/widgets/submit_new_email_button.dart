import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/presentation/modules/update_email/cubit/update_email_cubit.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class SubmitNewEmailButton extends StatelessWidget {
  const SubmitNewEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceHeight,
      child: BlocBuilder<UpdateEmailCubit, UpdateEmailState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            // An untapable button with a loading indicator.
            return IgnorePointer(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const ButtonsLoadingIndicator(),
                label: const Text('Submit'),
              ),
            );
          }
          return ElevatedButton(
            onPressed: !state.isValid
                ? null
                : () => context.read<UpdateEmailCubit>().updateEmail(),
            child: const Text('Submit'),
          );
        },
      ),
    ).symmetricPadding(
      vertical: 12,
      horizontal: 24,
    );
  }
}
