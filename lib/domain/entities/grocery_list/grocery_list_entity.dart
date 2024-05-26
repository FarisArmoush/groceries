import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list/grocery_list_model.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';

part 'grocery_list_entity.freezed.dart';

@freezed
class GroceryListEntity with _$GroceryListEntity {
  const factory GroceryListEntity({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryEntity>? items,
    List<UserEntity>? members,
    DateTime? creationDate,
  }) = _GroceryListEntity;
}

extension GroceryListModelMapper on GroceryListModel {
  GroceryListEntity toEntity() {
    return GroceryListEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
      items: items?.map((item) => item.toEntity()).toList(),
      members: members?.map((user) => user.toEntity()).toList(),
      creationDate: creationDate,
    );
  }
}

extension GroceryListEntityMapper on GroceryListEntity {
  GroceryListModel? toModel() {
    return GroceryListModel(
      id: id,
      name: name,
      imageUrl: imageUrl,
      items: items?.map((item) => item.toModel()).toList(),
      members: members?.map((user) => user.toModel()).toList(),
      creationDate: creationDate,
    );
  }
}
