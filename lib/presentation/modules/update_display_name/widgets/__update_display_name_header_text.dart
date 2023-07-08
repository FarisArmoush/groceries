part of 'update_display_name_form.dart';

class _UpdateDisplayNameHeaderText extends StatelessWidget {
  const _UpdateDisplayNameHeaderText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Change username',
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
