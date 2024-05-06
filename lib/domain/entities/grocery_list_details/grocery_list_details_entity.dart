import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';

part 'grocery_list_details_entity.freezed.dart';

@freezed
class GroceryListDetailsEntity with _$GroceryListDetailsEntity {
  factory GroceryListDetailsEntity({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryEntity?>? items,
    List<UserEntity?>? members,
    DateTime? creationDate,
  }) = _GroceryListDetailsEntity;
}

extension GroceryListDetailsModelMapper on GroceryListDetailsModel? {
  GroceryListDetailsEntity? toEntity() {
    if (this == null) return null;
    return GroceryListDetailsEntity(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      items: this?.items?.map((item) => item?.toEntity()).toList(),
      members: this?.members?.map((member) => member?.toEntity()).toList(),
      creationDate: this?.creationDate,
    );
  }
}

extension GroceryListDetailsEntityMapper on GroceryListDetailsEntity? {
  GroceryListDetailsModel? toModel() {
    if (this == null) return null;
    return GroceryListDetailsModel(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      items: this?.items?.map((item) => item?.toModel()).toList(),
      members: this?.members?.map((member) => member?.toModel()).toList(),
      creationDate: this?.creationDate,
    );
  }
}
