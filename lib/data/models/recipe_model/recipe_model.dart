import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/utils/timestamp_serializer.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required String? id,
    required String? name,
    required String? imageUrl,
    @TimestampSerializer() required DateTime? creationDate,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(JSON json) => _$RecipeModelFromJson(json);
}
