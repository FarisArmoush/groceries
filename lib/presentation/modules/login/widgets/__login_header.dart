part of 'login_form.dart';

class _LoginHeader extends StatelessWidget {
  const _LoginHeader();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.loginHeader,
      style: AppTextStyles.poppinsSemiBold(
        color: Theme.of(context).primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}