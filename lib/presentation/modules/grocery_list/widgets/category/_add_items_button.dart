part of 'category_box.dart';

class _AddItemsButton extends StatelessWidget {
  const _AddItemsButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        AppTranslations.addItems,
        style: AppTextStyles.poppinsLight(
          color: Theme.of(context).primaryColorLight,
          fontSize: 12,
        ),
      ),
    );
  }
}
