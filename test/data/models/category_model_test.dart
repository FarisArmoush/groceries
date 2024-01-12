import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/category_model/category_model.dart';

void main() {
  group('CategoryModel', () {
    test('AppThemeModel.fromJson', () {
      final json = <String, Object?>{
        'categoryId': '789',
        'creationDate': Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
        'image': 'https://example.com/category.jpg',
        'name': 'Example Category',
        'parentCategoryId': '123',
      };

      final categoryModel = CategoryModel.fromJson(json);

      expect(categoryModel.categoryId, '789');
      expect(categoryModel.creationDate, DateTime(2022, 01, 12, 15, 30, 45));
      expect(categoryModel.image, 'https://example.com/category.jpg');
      expect(categoryModel.name, 'Example Category');
      expect(categoryModel.parentCategoryId, '123');
    });

    test('AppThemeModel.toJson', () {
      final categoryModel = CategoryModel(
        categoryId: '789',
        creationDate: DateTime(2022, 01, 12, 15, 30, 45),
        image: 'https://example.com/category.jpg',
        name: 'Example Category',
        parentCategoryId: '123',
      );
      final json = categoryModel.toJson();

      expect(json['categoryId'], '789');
      expect(
        json['creationDate'],
        Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
      );
      expect(json['image'], 'https://example.com/category.jpg');
      expect(json['name'], 'Example Category');
      expect(json['parentCategoryId'], '123');
    });
  });

  test('AppThemeModel.Equality', () {
    final model1 = CategoryModel(
      categoryId: '789',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      image: 'https://example.com/category.jpg',
      name: 'Example Category',
      parentCategoryId: '123',
    );

    final model2 = CategoryModel(
      categoryId: '789',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      image: 'https://example.com/category.jpg',
      name: 'Example Category',
      parentCategoryId: '123',
    );

    expect(model1, model2);
  });

  test('AppThemeModel.copyWith', () {
    final originalModel = CategoryModel(
      categoryId: '789',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      image: 'https://example.com/category.jpg',
      name: 'Example Category',
      parentCategoryId: '123',
    );

    final modifiedModel = originalModel.copyWith(
      name: 'Modified Category',
    );

    expect(modifiedModel.categoryId, originalModel.categoryId);
    expect(modifiedModel.name, 'Modified Category');
    expect(modifiedModel, isNot(originalModel));
  });
}
