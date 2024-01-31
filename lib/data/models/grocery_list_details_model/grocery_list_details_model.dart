import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/utils/timestamp_serializer.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';

part 'grocery_list_details_model.freezed.dart';
part 'grocery_list_details_model.g.dart';

@freezed
class GroceryListDetailsModel with _$GroceryListDetailsModel {
  factory GroceryListDetailsModel({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryModel?>? items,
    List<UserModel?>? members,
    @TimestampSerializer() DateTime? creationDate,
  }) = _GroceryListDetailsModel;

  factory GroceryListDetailsModel.fromJson(JSON json) =>
      _$GroceryListDetailsModelFromJson(json);
}
