part of 'login_form.dart';

class _LoginHeader extends StatelessWidget {
  const _LoginHeader();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.loginHeader,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
