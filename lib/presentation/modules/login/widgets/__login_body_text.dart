part of 'login_form.dart';

class _LoginBodyText extends StatelessWidget {
  const _LoginBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.loginToYourAccount,
      style: AppTextStyles.poppinsRegular(
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}