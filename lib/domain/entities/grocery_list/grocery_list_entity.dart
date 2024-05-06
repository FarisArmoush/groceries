import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';

part 'grocery_list_entity.freezed.dart';

@freezed
class GroceryListEntity with _$GroceryListEntity {
  factory GroceryListEntity({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryEntity?>? items,
    List<UserEntity?>? members,
    DateTime? creationDate,
  }) = _GroceryListEntity;
}

extension GroceryListModelMapper on GroceryListModel? {
  GroceryListEntity? toEntity() {
    if (this == null) return null;
    return GroceryListEntity(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      items: this?.items?.map((item) => item.toEntity()).toList(),
      members: this?.members?.map((user) => user.toEntity()).toList(),
      creationDate: this?.creationDate,
    );
  }
}

extension GroceryListEntityMapper on GroceryListEntity? {
  GroceryListModel? toModel() {
    if (this == null) return null;
    return GroceryListModel(
      id: this?.id,
      name: this?.name,
      imageUrl: this?.imageUrl,
      items: this?.items?.map((item) => item?.toModel()).toList(),
      members: this?.members?.map((user) => user?.toModel()).toList(),
      creationDate: this?.creationDate,
    );
  }
}
