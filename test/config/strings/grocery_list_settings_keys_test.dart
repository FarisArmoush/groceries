import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/strings/grocery_list_settings_keys.dart';

void main() {
  group('GroceryListSettingsKeys', () {
    test('translations should not be null', () {
      final keys = GroceryListSettingsKeys();

      expect(keys.deleteList, isNotNull);
      expect(keys.yesDeleteList, isNotNull);
      expect(keys.dontDeleteList, isNotNull);
      expect(keys.removeMemberFromList, isNotNull);
      expect(keys.yesRemoveMember, isNotNull);
      expect(keys.dontRemoveMember, isNotNull);
      expect(keys.saveListChanges, isNotNull);
      expect(keys.listMembers, isNotNull);
      expect(keys.deleteGroceryListBottomSheetHeader, isNotNull);
      expect(keys.deleteGroceryListBottomSheetBody, isNotNull);
      expect(keys.listSettings, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = GroceryListSettingsKeys();

      expect(keys.deleteList.isNotEmpty, true);
      expect(keys.yesDeleteList.isNotEmpty, true);
      expect(keys.dontDeleteList.isNotEmpty, true);
      expect(keys.removeMemberFromList.isNotEmpty, true);
      expect(keys.yesRemoveMember.isNotEmpty, true);
      expect(keys.dontRemoveMember.isNotEmpty, true);
      expect(keys.saveListChanges.isNotEmpty, true);
      expect(keys.listMembers.isNotEmpty, true);
      expect(keys.deleteGroceryListBottomSheetHeader.isNotEmpty, true);
      expect(keys.deleteGroceryListBottomSheetBody.isNotEmpty, true);
      expect(keys.listSettings.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = GroceryListSettingsKeys();

      expect(tr(keys.deleteList), isNotNull);
      expect(tr(keys.yesDeleteList), isNotNull);
      expect(tr(keys.dontDeleteList), isNotNull);
      expect(tr(keys.removeMemberFromList), isNotNull);
      expect(tr(keys.yesRemoveMember), isNotNull);
      expect(tr(keys.dontRemoveMember), isNotNull);
      expect(tr(keys.saveListChanges), isNotNull);
      expect(tr(keys.listMembers), isNotNull);
      expect(tr(keys.deleteGroceryListBottomSheetHeader), isNotNull);
      expect(tr(keys.deleteGroceryListBottomSheetBody), isNotNull);
      expect(tr(keys.listSettings), isNotNull);
    });
  });
}
