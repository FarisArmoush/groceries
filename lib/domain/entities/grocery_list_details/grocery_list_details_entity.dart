import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_details/grocery_list_details_model.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';

part 'grocery_list_details_entity.freezed.dart';

@freezed
class GroceryListDetailsEntity with _$GroceryListDetailsEntity {
  const factory GroceryListDetailsEntity({
    String? id,
    String? name,
    String? imageUrl,
    List<GroceryEntity>? items,
    List<UserEntity>? members,
    DateTime? creationDate,
  }) = _GroceryListDetailsEntity;
}

extension GroceryListDetailsModelMapper on GroceryListDetailsModel {
  GroceryListDetailsEntity toEntity() {
    return GroceryListDetailsEntity(
      id: id,
      name: name,
      imageUrl: imageUrl,
      items: items?.map((item) => item.toEntity()).toList(),
      members: members?.map((member) => member.toEntity()).toList(),
      creationDate: creationDate,
    );
  }
}

extension GroceryListDetailsEntityMapper on GroceryListDetailsEntity {
  GroceryListDetailsModel toModel() {
    return GroceryListDetailsModel(
      id: id,
      name: name,
      imageUrl: imageUrl,
      items: items?.map((item) => item.toModel()).toList(),
      members: members?.map((member) => member.toModel()).toList(),
      creationDate: creationDate,
    );
  }
}
