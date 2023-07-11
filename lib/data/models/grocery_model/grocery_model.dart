import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_model.freezed.dart';
part 'grocery_model.g.dart';

@freezed
class GroceryModel with _$GroceryModel {
  const factory GroceryModel({
    required String id,
    required String name,
    required String category,
    required String notes,
  }) = _GroceryModel;

  factory GroceryModel.fromJson(Map<String, Object?> json) =>
      _$GroceryModelFromJson(json);
}
