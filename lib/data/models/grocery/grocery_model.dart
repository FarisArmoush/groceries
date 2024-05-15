import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/refinements/refinements_model.dart';
import 'package:groceries/data/timestamp_serializer.dart';

part 'grocery_model.freezed.dart';
part 'grocery_model.g.dart';

@freezed
class GroceryModel with _$GroceryModel {
  const factory GroceryModel({
    String? categoryId,
    @TimestampSerializer() DateTime? creationDate,
    String? id,
    String? image,
    bool? isDone,
    String? name,
    String? notes,
    String? priorityId,
    List<RefinementsModel>? refinements,
  }) = _GroceryModel;

  factory GroceryModel.fromJson(Map<String, dynamic> json) =>
      _$GroceryModelFromJson(json);
}
