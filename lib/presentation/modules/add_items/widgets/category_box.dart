part of '../add_items.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({required this.category, super.key});

  final String category;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryBoxDivider(),
          Text(
            category,
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 14,
            ),
          ).symmetricPadding(
            vertical: context.deviceHeight * 0.0175,
            horizontal: context.deviceWidth * 0.1,
          ),
          const CategoryBoxDivider(),
          TextButton(
            onPressed: () {},
            child: Text(AppTranslations.addItems.addItems),
          ).symmetricPadding(
            horizontal: context.deviceWidth * 0.1,
          ),
          const CategoryBoxDivider(),
        ],
      ),
    );
  }
}
