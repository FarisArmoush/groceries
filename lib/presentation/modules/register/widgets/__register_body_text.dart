part of 'register_form.dart';

class _RegisterBodyText extends StatelessWidget {
  const _RegisterBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.registerBody,
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
