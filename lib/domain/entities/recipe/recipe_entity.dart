import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/recipe/recipe_model.dart';

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

extension RecipeModelMapper on RecipeModel {
  RecipeEntity toEntity() {
    return RecipeEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
      creationDate: creationDate,
    );
  }
}

extension RecipeEntityMapper on RecipeEntity {
  RecipeModel toModel() {
    return RecipeModel(
      id: id,
      name: name,
      imageUrl: imageUrl,
      creationDate: creationDate,
    );
  }
}
