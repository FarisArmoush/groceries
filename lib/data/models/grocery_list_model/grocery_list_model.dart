import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/models.dart';

import 'package:groceries/utils/timestamp_serializer.dart';
import 'package:groceries/utils/typedefs/json.dart';

part 'grocery_list_model.freezed.dart';
part 'grocery_list_model.g.dart';

@freezed
class GroceryListModel with _$GroceryListModel {
  const factory GroceryListModel({
    required String? id,
    required String? name,
    required String? imageUrl,
    required List<GroceryModel?>? items,
    required List<UserModel?>? members,
    @TimestampSerializer() required DateTime? creationDate,
  }) = _GroceryListModel;

  factory GroceryListModel.fromJson(Json json) =>
      _$GroceryListModelFromJson(json);
}
