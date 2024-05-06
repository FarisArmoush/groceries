import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/entities/grocery_list/grocery_list_entity.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  factory TaskEntity({
    String? id,
    GroceryListEntity? listModel,
    DateTime? dueDate,
    List<GroceryEntity?>? groceries,
    DateTime? creationDate,
  }) = _TaskEntity;
}

extension TaskModelMapper on TaskModel? {
  TaskEntity? toEntity() {
    if (this == null) return null;
    return TaskEntity(
      id: this?.id,
      listModel: this?.listModel?.toEntity(),
      dueDate: this?.dueDate,
      groceries: this?.groceries?.map((e) => e?.toEntity()).toList(),
      creationDate: this?.creationDate,
    );
  }
}

extension TaskEntityMapper on TaskEntity? {
  TaskModel? toModel() {
    if (this == null) return null;
    return TaskModel(
      id: this?.id,
      listModel: this?.listModel?.toModel(),
      dueDate: this?.dueDate,
      groceries: this?.groceries?.map((e) => e?.toModel()).toList(),
      creationDate: this?.creationDate,
    );
  }
}
