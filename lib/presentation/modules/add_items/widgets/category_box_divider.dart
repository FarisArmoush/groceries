part of '../add_items.dart';

class CategoryBoxDivider extends StatelessWidget {
  const CategoryBoxDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: context.theme.hintColor.withOpacity(0.25),
    );
  }
}
