import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';

part 'recipe_details_entity.freezed.dart';

@freezed
class RecipeDetailsEntity with _$RecipeDetailsEntity {
  factory RecipeDetailsEntity({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryEntity?>? items,
    List<String>? steps,
  }) = _RecipeDetailsEntity;
}

extension RecipeDetailsModelMapper on RecipeDetailsModel? {
  RecipeDetailsEntity? toEntity() {
    if (this == null) return null;
    return RecipeDetailsEntity(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      items: this?.items?.map((item) => item?.toEntity()).toList(),
      steps: this?.steps,
    );
  }
}

extension RecipeDetailsEntityMapper on RecipeDetailsEntity? {
  RecipeDetailsModel? toModel() {
    if (this == null) return null;
    return RecipeDetailsModel(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      items: this?.items?.map((item) => item?.toModel()).toList(),
      steps: this?.steps,
    );
  }
}
