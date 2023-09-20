// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      creationDate: DateTime.parse(json['creationDate'] as String),
      image: json['image'] as String,
      name: json['name'] as String,
      parentCategoryId: json['parentCategoryId'] as String?,
      categoryId: json['categoryId'] as String,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'creationDate': instance.creationDate.toIso8601String(),
      'image': instance.image,
      'name': instance.name,
      'parentCategoryId': instance.parentCategoryId,
      'categoryId': instance.categoryId,
    };
