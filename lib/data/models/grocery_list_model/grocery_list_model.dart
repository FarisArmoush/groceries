import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/utils/timestamp_serializer.dart';

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

  factory GroceryListModel.fromJson(Map<String, Object?> json) =>
      _$GroceryListModelFromJson(json);
}
