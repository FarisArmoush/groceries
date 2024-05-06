import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
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
    List<RefinementEntity?>? refinements,
  }) = _GroceryEntity;
}

extension GroceryModelMapper on GroceryModel? {
  GroceryEntity? toEntity() {
    if (this == null) return null;
    return GroceryEntity(
      id: this?.id,
      name: this?.name,
      image: this?.image,
      notes: this?.notes,
      isDone: this?.isDone,
      categoryId: this?.categoryId,
      priorityId: this?.priorityId,
      creationDate: this?.creationDate,
      refinements: this?.refinements?.map((e) => e?.toEntity()).toList(),
    );
  }
}

extension GroceryEntityMapper on GroceryEntity? {
  GroceryModel? toModel() {
    if (this == null) return null;

    return GroceryModel(
      id: this?.id,
      name: this?.name,
      image: this?.image,
      notes: this?.notes,
      isDone: this?.isDone,
      categoryId: this?.categoryId,
      priorityId: this?.priorityId,
      creationDate: this?.creationDate,
      refinements: this?.refinements?.map((e) => e?.toModel()).toList(),
    );
  }
}
