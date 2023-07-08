part of 'register_form.dart';

class _RegisterHeader extends StatelessWidget {
  const _RegisterHeader();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.registerHeader,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
