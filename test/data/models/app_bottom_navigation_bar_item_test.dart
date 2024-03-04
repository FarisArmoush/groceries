import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/app_bottom_navigation_bar_item/app_bottom_navigation_bar_item.dart';

void main() {
  group('AppBottomNavigationBarItem', () {
    test('AppBottomNavigationBarItem.Equality', () {
      final model1 = AppBottomNavigationBarItem(
        title: const Text('Home'),
        icon: const Icon(Icons.home),
        selectedColor: Colors.blue,
        unselectedColor: Colors.grey,
        activeIcon: const Icon(Icons.home_filled),
      );

      final model2 = AppBottomNavigationBarItem(
        title: const Text('Home'),
        icon: const Icon(Icons.home),
        selectedColor: Colors.blue,
        unselectedColor: Colors.grey,
        activeIcon: const Icon(Icons.home_filled),
      );

      expect(model1.toString(), model2.toString());
    });

    test('AppBottomNavigationBarItem.copyWith', () {
      final originalModel = AppBottomNavigationBarItem(
        title: const Text('Home'),
        icon: const Icon(Icons.home),
        selectedColor: Colors.blue,
        unselectedColor: Colors.grey,
        activeIcon: const Icon(Icons.home_filled),
      );

      final modifiedModel = originalModel.copyWith(
        title: const Text('Profile'),
      );

      expect(modifiedModel.title, isNot(originalModel.title));
      expect(modifiedModel.icon, originalModel.icon);
      expect(modifiedModel.selectedColor, originalModel.selectedColor);
      expect(modifiedModel.unselectedColor, originalModel.unselectedColor);
      expect(modifiedModel.activeIcon, originalModel.activeIcon);
      expect(modifiedModel, isNot(originalModel));
    });
  });
}
