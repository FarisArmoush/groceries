import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/update_email/bloc/update_email_bloc.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

class SubmitNewEmailButton extends StatelessWidget {
  const SubmitNewEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceHeight,
      child: BlocBuilder<UpdateEmailBloc, UpdateEmailState>(
        buildWhen: (previous, current) =>
            previous.isValid != current.isValid ||
            previous.email != current.email ||
            previous.status != current.status,
        builder: (context, state) {
          final canSubmit = state.isValid || state.email.isValid;
          return IgnorePointer(
            ignoring: state.status.isInProgressOrSuccess,
            child: ElevatedButton(
              onPressed: canSubmit
                  ? () => context.read<UpdateEmailBloc>().add(
                        const UpdateEmailEvent.updateEmail(),
                      )
                  : null,
              child: Text(AppTranslations.general.submit),
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
