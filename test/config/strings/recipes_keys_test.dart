import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('RecipesKeys', () {
    test('translations should not be null', () {
      final keys = RecipesKeys();

      expect(keys.recipes, isNotNull);
      expect(keys.addRecipeToList, isNotNull);
      expect(keys.archiveRecipe, isNotNull);
      expect(keys.deleteRecipe, isNotNull);
      expect(keys.deleteRecipeBottomSheetHeader, isNotNull);
      expect(keys.yesDeleteRecipe, isNotNull);
      expect(keys.dontDeleteRecipe, isNotNull);
      expect(keys.createFirstRecipe, isNotNull);
      expect(keys.emptyRecipesHeader, isNotNull);
      expect(keys.emptyRecipesBody, isNotNull);
      expect(keys.addRecipeToListBottomSheetHeader, isNotNull);
      expect(keys.addRecipeToListBottomSheetBody, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = RecipesKeys();

      expect(keys.recipes.isNotEmpty, true);
      expect(keys.addRecipeToList.isNotEmpty, true);
      expect(keys.archiveRecipe.isNotEmpty, true);
      expect(keys.deleteRecipe.isNotEmpty, true);
      expect(keys.deleteRecipeBottomSheetHeader.isNotEmpty, true);
      expect(keys.yesDeleteRecipe.isNotEmpty, true);
      expect(keys.dontDeleteRecipe.isNotEmpty, true);
      expect(keys.createFirstRecipe.isNotEmpty, true);
      expect(keys.emptyRecipesHeader.isNotEmpty, true);
      expect(keys.emptyRecipesBody.isNotEmpty, true);
      expect(keys.addRecipeToListBottomSheetHeader.isNotEmpty, true);
      expect(keys.addRecipeToListBottomSheetBody.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = RecipesKeys();

      expect(tr(keys.recipes), isNotNull);
      expect(tr(keys.addRecipeToList), isNotNull);
      expect(tr(keys.archiveRecipe), isNotNull);
      expect(tr(keys.deleteRecipe), isNotNull);
      expect(tr(keys.deleteRecipeBottomSheetHeader), isNotNull);
      expect(tr(keys.yesDeleteRecipe), isNotNull);
      expect(tr(keys.dontDeleteRecipe), isNotNull);
      expect(tr(keys.createFirstRecipe), isNotNull);
      expect(tr(keys.emptyRecipesHeader), isNotNull);
      expect(tr(keys.emptyRecipesBody), isNotNull);
      expect(tr(keys.addRecipeToListBottomSheetHeader), isNotNull);
      expect(tr(keys.addRecipeToListBottomSheetBody), isNotNull);
    });
  });
}
