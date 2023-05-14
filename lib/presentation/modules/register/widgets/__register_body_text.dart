part of 'register_form.dart';

class _RegisterBodyText extends StatelessWidget {
  const _RegisterBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.createYourAccount,
      style: AppTextStyles.regular(
        context: context,
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}
