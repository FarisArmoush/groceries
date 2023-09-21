import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';

part 'grocery_model.freezed.dart';
part 'grocery_model.g.dart';

@freezed
class GroceryModel with _$GroceryModel {
  const factory GroceryModel({
    required String categoryId,
    required DateTime creationDate,
    required String id,
    required String image,
    required bool isDone,
    required String name,
    required String notes,
    required List<RefinementsModel> refinements,
  }) = _GroceryModel;

  factory GroceryModel.fromJson(Map<String, Object?> json) =>
      _$GroceryModelFromJson(json);
}
