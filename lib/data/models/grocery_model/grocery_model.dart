import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/models.dart';
import 'package:groceries/utils/timestamp_serializer.dart';
import 'package:groceries/utils/typedefs/json.dart';

part 'grocery_model.freezed.dart';
part 'grocery_model.g.dart';

@freezed
class GroceryModel with _$GroceryModel {
  const factory GroceryModel({
    required String? categoryId,
    @TimestampSerializer() required DateTime? creationDate,
    required String? id,
    required String? image,
    required bool? isDone,
    required String? name,
    required String? notes,
    required List<RefinementsModel?>? refinements,
  }) = _GroceryModel;

  factory GroceryModel.fromJson(Json json) => _$GroceryModelFromJson(json);
}
