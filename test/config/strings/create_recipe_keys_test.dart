import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('CreateRecipeKeys', () {
    test('translations should not be null', () {
      final keys = CreateRecipeKeys();

      expect(keys.createRecipe, isNotNull);
      expect(keys.recipeName, isNotNull);
      expect(keys.addItemsToRecipe, isNotNull);
      expect(keys.addStep, isNotNull);
      expect(keys.failedToCreateHeader, isNotNull);
      expect(keys.failedToCreateBody, isNotNull);
      expect(keys.successHeader, isNotNull);
      expect(keys.successBody, isNotNull);
      expect(keys.stepHint, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = CreateRecipeKeys();

      expect(keys.createRecipe.isNotEmpty, true);
      expect(keys.recipeName.isNotEmpty, true);
      expect(keys.addItemsToRecipe.isNotEmpty, true);
      expect(keys.addStep.isNotEmpty, true);
      expect(keys.failedToCreateHeader.isNotEmpty, true);
      expect(keys.failedToCreateBody.isNotEmpty, true);
      expect(keys.successHeader.isNotEmpty, true);
      expect(keys.successBody.isNotEmpty, true);
      expect(keys.stepHint.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = CreateRecipeKeys();

      expect(tr(keys.createRecipe), isNotNull);
      expect(tr(keys.recipeName), isNotNull);
      expect(tr(keys.addItemsToRecipe), isNotNull);
      expect(tr(keys.addStep), isNotNull);
      expect(tr(keys.failedToCreateHeader), isNotNull);
      expect(tr(keys.failedToCreateBody), isNotNull);
      expect(tr(keys.successHeader), isNotNull);
      expect(tr(keys.successBody), isNotNull);
      expect(tr(keys.stepHint), isNotNull);
    });
  });
}
