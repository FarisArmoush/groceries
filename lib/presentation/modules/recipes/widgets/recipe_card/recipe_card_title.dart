part of '../../recipes.dart';

class RecipeCardTitle extends StatelessWidget {
  const RecipeCardTitle({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColor,
        fontSize: 32,
      ),
    );
  }
}
