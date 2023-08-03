part of '../recipes.dart';

class RecipeDetailsListHeader extends StatelessWidget {
  const RecipeDetailsListHeader(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        fontSize: 24,
        color: context.theme.primaryColor,
      ),
    );
  }
}
