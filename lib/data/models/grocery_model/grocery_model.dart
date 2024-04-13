import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:groceries/utils/timestamp_serializer.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';

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
    List<RefinementsModel?>? refinements,
  }) = _GroceryModel;

  factory GroceryModel.fromJson(JSON json) => _$GroceryModelFromJson(json);
}
