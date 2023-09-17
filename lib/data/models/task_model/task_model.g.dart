// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      uid: json['uid'] as String,
      listModel:
          GroceryListModel.fromJson(json['listModel'] as Map<String, dynamic>),
      dueDate: DateTime.parse(json['dueDate'] as String),
      groceries: (json['groceries'] as List<dynamic>)
          .map((e) => GroceryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'listModel': instance.listModel,
      'dueDate': instance.dueDate.toIso8601String(),
      'groceries': instance.groceries,
      'creationDate': instance.creationDate.toIso8601String(),
    };
