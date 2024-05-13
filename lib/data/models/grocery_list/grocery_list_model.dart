import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/data/models/user/user_model.dart';
import 'package:groceries/utils/timestamp_serializer.dart';

part 'grocery_list_model.freezed.dart';
part 'grocery_list_model.g.dart';

@freezed
class GroceryListModel with _$GroceryListModel {
  const factory GroceryListModel({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryModel>? items,
    List<UserModel>? members,
    @TimestampSerializer() DateTime? creationDate,
  }) = _GroceryListModel;

  factory GroceryListModel.fromJson(Map<String, dynamic> json) =>
      _$GroceryListModelFromJson(json);
}
