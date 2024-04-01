import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('GroceryListsKeys', () {
    test('translations should not be null', () {
      final keys = GroceryListsKeys();

      expect(keys.emptyListHeader, isNotNull);
      expect(keys.emptyListBody, isNotNull);
      expect(keys.browseGroceries, isNotNull);
      expect(keys.clearGroceriesFromList, isNotNull);
      expect(keys.yesClearGroceries, isNotNull);
      expect(keys.noDontClearGroceries, isNotNull);
      expect(keys.listOptions, isNotNull);
      expect(keys.sendListAsText, isNotNull);
      expect(keys.printList, isNotNull);
      expect(keys.edit, isNotNull);
      expect(keys.share, isNotNull);
      expect(keys.delete, isNotNull);
      expect(keys.markAsDone, isNotNull);
      expect(keys.addImage, isNotNull);
      expect(keys.removeImage, isNotNull);
      expect(keys.notes, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = GroceryListsKeys();

      expect(keys.emptyListHeader.isNotEmpty, true);
      expect(keys.emptyListBody.isNotEmpty, true);
      expect(keys.browseGroceries.isNotEmpty, true);
      expect(keys.clearGroceriesFromList.isNotEmpty, true);
      expect(keys.yesClearGroceries.isNotEmpty, true);
      expect(keys.noDontClearGroceries.isNotEmpty, true);
      expect(keys.listOptions.isNotEmpty, true);
      expect(keys.sendListAsText.isNotEmpty, true);
      expect(keys.printList.isNotEmpty, true);
      expect(keys.edit.isNotEmpty, true);
      expect(keys.share.isNotEmpty, true);
      expect(keys.delete.isNotEmpty, true);
      expect(keys.markAsDone.isNotEmpty, true);
      expect(keys.addImage.isNotEmpty, true);
      expect(keys.removeImage.isNotEmpty, true);
      expect(keys.notes.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = GroceryListsKeys();

      expect(tr(keys.emptyListHeader), isNotNull);
      expect(tr(keys.emptyListBody), isNotNull);
      expect(tr(keys.browseGroceries), isNotNull);
      expect(tr(keys.clearGroceriesFromList), isNotNull);
      expect(tr(keys.yesClearGroceries), isNotNull);
      expect(tr(keys.noDontClearGroceries), isNotNull);
      expect(tr(keys.listOptions), isNotNull);
      expect(tr(keys.sendListAsText), isNotNull);
      expect(tr(keys.printList), isNotNull);
      expect(tr(keys.edit), isNotNull);
      expect(tr(keys.share), isNotNull);
      expect(tr(keys.delete), isNotNull);
      expect(tr(keys.markAsDone), isNotNull);
      expect(tr(keys.addImage), isNotNull);
      expect(tr(keys.removeImage), isNotNull);
      expect(tr(keys.notes), isNotNull);
    });
  });
}
