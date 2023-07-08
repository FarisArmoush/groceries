part of 'update_display_name_form.dart';

class _UpdateDisplayNameBodyText extends StatelessWidget {
  const _UpdateDisplayNameBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose your new username',
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
