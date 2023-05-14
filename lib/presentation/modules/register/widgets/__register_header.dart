part of 'register_form.dart';

class _RegisterHeader extends StatelessWidget {
  const _RegisterHeader();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.registerHeader,
      style: AppTextStyles.poppinsSemiBold(
        color: Theme.of(context).primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
