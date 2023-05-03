part of 'login_form.dart';

class _LoginBodyText extends StatelessWidget {
  const _LoginBodyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.loginToYourAccount,
      style: AppTextStyles.poppinsRegular(
        color: Theme.of(context).primaryColor,
        fontSize: 28,
      ),
    );
  }
}
