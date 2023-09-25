// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      uid: json['uid'] as String?,
      listModel: json['listModel'] == null
          ? null
          : GroceryListModel.fromJson(
              json['listModel'] as Map<String, dynamic>,
            ),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      groceries: (json['groceries'] as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : GroceryModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      creationDate: _$JsonConverterFromJson<Timestamp, DateTime>(
        json['creationDate'],
        const TimestampSerializer().fromJson,
      ),
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'listModel': instance.listModel,
      'dueDate': instance.dueDate?.toIso8601String(),
      'groceries': instance.groceries,
      'creationDate': _$JsonConverterToJson<Timestamp, DateTime>(
        instance.creationDate,
        const TimestampSerializer().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
