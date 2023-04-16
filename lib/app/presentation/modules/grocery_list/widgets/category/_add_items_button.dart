part of 'category_box.dart';

class _AddItemsButton extends StatelessWidget {
  const _AddItemsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Add Items',
        style: AppTextStyles.poppinsLight(
          color: Theme.of(context).primaryColorLight,
          fontSize: 12,
        ),
      ),
    );
  }
}
