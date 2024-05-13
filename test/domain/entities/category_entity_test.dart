import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/category/category_model.dart';
import 'package:groceries/domain/entities/category/category_entity.dart';

void main() {
  group('CategoryEntity and CategoryModel Mappers', () {
    final testDate = DateTime(2022, 5, 20);
    final testEntity = CategoryEntity(
      categoryId: '1',
      creationDate: testDate,
      image: 'image_url',
      name: 'Electronics',
      parentCategoryId: '0',
      hasSubCategories: true,
    );

    final testModel = CategoryModel(
      categoryId: '1',
      creationDate: testDate,
      image: 'image_url',
      name: 'Electronics',
      parentCategoryId: '0',
      hasSubCategories: true,
    );

    test('should correctly convert CategoryModel to CategoryEntity', () {
      final result = testModel.toEntity();
      expect(result, isA<CategoryEntity>());
      expect(result.categoryId, testModel.categoryId);
      expect(result.creationDate, testModel.creationDate);
      expect(result.image, testModel.image);
      expect(result.name, testModel.name);
      expect(result.parentCategoryId, testModel.parentCategoryId);
      expect(result.hasSubCategories, testModel.hasSubCategories);
    });

    test('should correctly convert CategoryEntity to CategoryModel', () {
      final result = testEntity.toModel();
      expect(result, isA<CategoryModel>());
      expect(result.categoryId, testEntity.categoryId);
      expect(result.creationDate, testEntity.creationDate);
      expect(result.image, testEntity.image);
      expect(result.name, testEntity.name);
      expect(result.parentCategoryId, testEntity.parentCategoryId);
      expect(result.hasSubCategories, testEntity.hasSubCategories);
    });
  });
}
