import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';

class CancelBottomSheet extends StatelessWidget {
  const CancelBottomSheet({
    this.title,
    this.onCancel,
    super.key,
  });

  final String? title;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: AppPaddings.bottomSheet(context),
      children: [
        Text(
          title ?? Translations.general.discardChanges,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: context.deviceHeight * 0.03),
        FilledButton(
          onPressed: onCancel ??
              () => context
                ..pop()
                ..pop(),
          child: Text(Translations.general.yesCancel),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(Translations.general.dontCancel),
        ),
      ],
    );
  }
}
