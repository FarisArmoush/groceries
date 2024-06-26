import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/data/models/grocery_list/grocery_list_model.dart';
import 'package:groceries/data/timestamp_serializer.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    String? id,
    GroceryListModel? listModel,
    DateTime? dueDate,
    List<GroceryModel>? groceries,
    @TimestampSerializer() DateTime? creationDate,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
