import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';

part 'recipe_details_model.freezed.dart';
part 'recipe_details_model.g.dart';

@freezed
class RecipeDetailsModel with _$RecipeDetailsModel {
  const factory RecipeDetailsModel({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryModel>? items,
    List<String>? steps,
  }) = _RecipeDetailsModel;

  factory RecipeDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsModelFromJson(json);
}
