part of 'register_form.dart';

class _RegisterHeader extends StatelessWidget {
  const _RegisterHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.registerHeader,
      style: AppTextStyles.poppinsBold(
        color: Theme.of(context).primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
