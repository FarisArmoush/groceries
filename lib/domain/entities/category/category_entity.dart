import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/category/category_model.dart';

part 'category_entity.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    String? categoryId,
    DateTime? creationDate,
    String? image,
    String? name,
    String? parentCategoryId,
    bool? hasSubCategories,
  }) = _CategoryEntity;
}

extension CategoryModelMapper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      categoryId: categoryId,
      creationDate: creationDate,
      image: image,
      name: name,
      parentCategoryId: parentCategoryId,
      hasSubCategories: hasSubCategories,
    );
  }
}

extension CategoryEntityMapper on CategoryEntity {
  CategoryModel toModel() {
    return CategoryModel(
      categoryId: categoryId,
      creationDate: creationDate,
      image: image,
      name: name,
      parentCategoryId: parentCategoryId,
      hasSubCategories: hasSubCategories,
    );
  }
}
