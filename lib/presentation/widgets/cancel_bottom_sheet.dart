part of 'widgets.dart';

class CancelBottomSheet extends StatelessWidget {
  const CancelBottomSheet({
    this.title = 'Discard Changes?',
    this.onCancel,
    super.key,
  });

  final String title;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          title,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: context.deviceHeight * 0.03),
        FilledButton(
          onPressed: onCancel ??
              () => context
                ..pop()
                ..pop(),
          child: const Text('Yes, Cancel'),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: const Text("Don't Cancel"),
        ),
      ],
    );
  }
}
