part of '../add_items.dart';

class CategoryBoxAddItemsButton extends StatelessWidget {
  const CategoryBoxAddItemsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(AppTranslations.addItems.addItems),
    ).symmetricPadding(
      horizontal: context.deviceWidth * 0.1,
    );
  }
}
