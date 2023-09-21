// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'grocery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroceryModel _$$_GroceryModelFromJson(Map<String, dynamic> json) =>
    _$_GroceryModel(
      categoryId: json['categoryId'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      id: json['id'] as String,
      image: json['image'] as String,
      isDone: json['isDone'] as bool,
      name: json['name'] as String,
      notes: json['notes'] as String,
      refinements: (json['refinements'] as List<dynamic>)
          .map((e) => RefinementsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GroceryModelToJson(_$_GroceryModel instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'creationDate': instance.creationDate.toIso8601String(),
      'id': instance.id,
      'image': instance.image,
      'isDone': instance.isDone,
      'name': instance.name,
      'notes': instance.notes,
      'refinements': instance.refinements,
    };
