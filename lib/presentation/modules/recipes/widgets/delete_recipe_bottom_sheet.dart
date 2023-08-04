part of '../recipes.dart';

class DeleteRecipeBottomSheet extends StatelessWidget {
  const DeleteRecipeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      children: [
        Text(
          AppTranslations.deleteRecipeBottomSheetHeader,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        FilledButton(
          onPressed: () => context.pop(),
          child: Text(
            AppTranslations.yesDeleteRecipe,
          ),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(
            AppTranslations.dontDeleteRecipe,
          ),
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
      ],
    );
  }
}