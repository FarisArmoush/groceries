import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('HomeKeys', () {
    test('translations should not be null', () {
      final keys = HomeKeys();

      expect(keys.home, isNotNull);
      expect(keys.homeGreeting, isNotNull);
      expect(keys.homeTip, isNotNull);
      expect(keys.myLists, isNotNull);
      expect(keys.myTasks, isNotNull);
      expect(keys.newTasks, isNotNull);
      expect(keys.youDontHaveGroceryLists, isNotNull);
      expect(keys.youDontHaveTasks, isNotNull);
      expect(keys.createYourFirstList, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = HomeKeys();

      expect(keys.home.isNotEmpty, true);
      expect(keys.homeGreeting.isNotEmpty, true);
      expect(keys.homeTip.isNotEmpty, true);
      expect(keys.myLists.isNotEmpty, true);
      expect(keys.myTasks.isNotEmpty, true);
      expect(keys.newTasks.isNotEmpty, true);
      expect(keys.youDontHaveGroceryLists.isNotEmpty, true);
      expect(keys.youDontHaveTasks.isNotEmpty, true);
      expect(keys.createYourFirstList.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = HomeKeys();

      expect(tr(keys.home), isNotNull);
      expect(tr(keys.homeGreeting), isNotNull);
      expect(tr(keys.homeTip), isNotNull);
      expect(tr(keys.myLists), isNotNull);
      expect(tr(keys.myTasks), isNotNull);
      expect(tr(keys.newTasks), isNotNull);
      expect(tr(keys.youDontHaveGroceryLists), isNotNull);
      expect(tr(keys.youDontHaveTasks), isNotNull);
      expect(tr(keys.createYourFirstList), isNotNull);
    });
  });
}
