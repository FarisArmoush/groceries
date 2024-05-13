import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/domain/entities/refinement/refinement_entity.dart';

part 'grocery_entity.freezed.dart';

@freezed
class GroceryEntity with _$GroceryEntity {
  factory GroceryEntity({
    String? categoryId,
    DateTime? creationDate,
    String? id,
    String? image,
    bool? isDone,
    String? name,
    String? notes,
    String? priorityId,
    List<RefinementEntity>? refinements,
  }) = _GroceryEntity;
}

extension GroceryModelMapper on GroceryModel {
  GroceryEntity toEntity() {
    return GroceryEntity(
      id: id,
      name: name,
      image: image,
      notes: notes,
      isDone: isDone,
      categoryId: categoryId,
      priorityId: priorityId,
      creationDate: creationDate,
      refinements: refinements?.map((e) => e.toEntity()).toList(),
    );
  }
}

extension GroceryEntityMapper on GroceryEntity {
  GroceryModel toModel() {
    return GroceryModel(
      id: id,
      name: name,
      image: image,
      notes: notes,
      isDone: isDone,
      categoryId: categoryId,
      priorityId: priorityId,
      creationDate: creationDate,
      refinements: refinements?.map((e) => e.toModel()).toList(),
    );
  }
}
