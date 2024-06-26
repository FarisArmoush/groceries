import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/modules/update_display_name/bloc/update_display_name_bloc.dart';

class SubmitNewDisplayNameButton extends StatelessWidget {
  const SubmitNewDisplayNameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceHeight,
      child: BlocBuilder<UpdateDisplayNameBloc, UpdateDisplayNameState>(
        buildWhen: (previous, current) =>
            previous.isValid != current.isValid ||
            previous.displayName != current.displayName ||
            previous.status != current.status,
        builder: (context, state) {
          final canSubmit = state.isValid || state.displayName.isValid;
          return IgnorePointer(
            ignoring: state.status.isInProgressOrSuccess,
            child: ElevatedButton(
              onPressed: canSubmit
                  ? () => context.read<UpdateDisplayNameBloc>().add(
                        const UpdateDisplayNameEvent.submit(),
                      )
                  : null,
              child: Text(Translations.general.submit),
            ),
          );
        },
      ),
    ).symmetricPadding(
      vertical: 12,
      horizontal: 24,
    );
  }
}
