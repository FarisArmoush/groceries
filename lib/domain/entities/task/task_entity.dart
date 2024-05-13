import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/task/task_model.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/entities/grocery_list/grocery_list_entity.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  factory TaskEntity({
    String? id,
    GroceryListEntity? listModel,
    DateTime? dueDate,
    List<GroceryEntity>? groceries,
    DateTime? creationDate,
  }) = _TaskEntity;
}

extension TaskModelMapper on TaskModel {
  TaskEntity toEntity() {
    return TaskEntity(
      id: id,
      listModel: listModel?.toEntity(),
      dueDate: dueDate,
      groceries: groceries?.map((e) => e.toEntity()).toList(),
      creationDate: creationDate,
    );
  }
}

extension TaskEntityMapper on TaskEntity {
  TaskModel toModel() {
    return TaskModel(
      id: id,
      listModel: listModel?.toModel(),
      dueDate: dueDate,
      groceries: groceries?.map((e) => e.toModel()).toList(),
      creationDate: creationDate,
    );
  }
}
