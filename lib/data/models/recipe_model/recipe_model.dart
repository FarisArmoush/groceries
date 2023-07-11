import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';

part 'recipe_model.g.dart';
part 'recipe_model.freezed.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required String uid,
    required String name,
    required String imageUrl,
    required List<GroceryModel> items,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, Object?> json) =>
      _$RecipeModelFromJson(json);
}
