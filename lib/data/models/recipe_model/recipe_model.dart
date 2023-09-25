import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/utils/timestamp_serializer.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required String? uid,
    required String? name,
    required String? imageUrl,
    required List<GroceryModel?>? items,
    @TimestampSerializer() required DateTime? creationDate,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, Object?> json) =>
      _$RecipeModelFromJson(json);
}
