import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/presentation/modules/update_display_name/cubit/update_display_name_cubit.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class SubmitNewDisplayNameButton extends StatelessWidget {
  const SubmitNewDisplayNameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      child: SizedBox(
        width: context.deviceHeight,
        child: BlocBuilder<UpdateDisplayNameCubit, UpdateDisplayNameState>(
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
                  : () => context
                      .read<UpdateDisplayNameCubit>()
                      .updateDisplayName(),
              child: const Text('Submit'),
            );
          },
        ),
      ),
    );
  }
}
