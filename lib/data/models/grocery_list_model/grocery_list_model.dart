import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

part 'grocery_list_model.freezed.dart';
part 'grocery_list_model.g.dart';

@freezed
class GroceryListModel with _$GroceryListModel {
  const factory GroceryListModel({
    required int uid,
    required String name,
    required String imageUrl,
    required List<GroceryModel> items,
    required List<UserModel> members,
    required DateTime creationDate,
  }) = _GroceryListModel;

  factory GroceryListModel.fromJson(Map<String, Object?> json) =>
      _$GroceryListModelFromJson(json);
}
