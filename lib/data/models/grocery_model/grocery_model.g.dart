// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'grocery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroceryModel _$$_GroceryModelFromJson(Map<String, dynamic> json) =>
    _$_GroceryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      category: json['category'] as String,
      notes: json['notes'] as String,
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GroceryModelToJson(_$_GroceryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
      'notes': instance.notes,
      'isDone': instance.isDone,
    };
