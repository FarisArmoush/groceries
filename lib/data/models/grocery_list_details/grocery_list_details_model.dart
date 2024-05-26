import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/data/models/user/user_model.dart';
import 'package:groceries/data/timestamp_serializer.dart';

part 'grocery_list_details_model.freezed.dart';
part 'grocery_list_details_model.g.dart';

@freezed
class GroceryListDetailsModel with _$GroceryListDetailsModel {
  const factory GroceryListDetailsModel({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryModel>? items,
    List<UserModel>? members,
    @TimestampSerializer() DateTime? creationDate,
  }) = _GroceryListDetailsModel;

  factory GroceryListDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$GroceryListDetailsModelFromJson(json);
}
