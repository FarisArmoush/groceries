import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/category_model/category_model.dart';

part 'category_entity.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  factory CategoryEntity({
    String? categoryId,
    DateTime? creationDate,
    String? image,
    String? name,
    String? parentCategoryId,
    bool? hasSubCategories,
  }) = _CategoryEntity;
}

extension CategoryModelMapper on CategoryModel? {
  CategoryEntity? toEntity() {
    if (this == null) return null;
    return CategoryEntity(
      categoryId: this?.categoryId,
      creationDate: this?.creationDate,
      image: this?.image,
      name: this?.name,
      parentCategoryId: this?.parentCategoryId,
      hasSubCategories: this?.hasSubCategories,
    );
  }
}

extension CategoryEntityMapper on CategoryEntity? {
  CategoryModel? toModel() {
    if (this == null) return null;
    return CategoryModel(
      categoryId: this?.categoryId,
      creationDate: this?.creationDate,
      image: this?.image,
      name: this?.name,
      parentCategoryId: this?.parentCategoryId,
      hasSubCategories: this?.hasSubCategories,
    );
  }
}
