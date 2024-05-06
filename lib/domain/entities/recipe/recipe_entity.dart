import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';

part 'recipe_entity.freezed.dart';

@freezed
class RecipeEntity with _$RecipeEntity {
  factory RecipeEntity({
    String? id,
    String? name,
    String? imageUrl,
    DateTime? creationDate,
  }) = _RecipeEntity;
}

extension RecipeModelMapper on RecipeModel? {
  RecipeEntity? toEntity() {
    if (this == null) return null;
    return RecipeEntity(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      creationDate: this?.creationDate,
    );
  }
}

extension RecipeEntityMapper on RecipeEntity? {
  RecipeModel? toModel() {
    if (this == null) return null;
    return RecipeModel(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      creationDate: this?.creationDate,
    );
  }
}
