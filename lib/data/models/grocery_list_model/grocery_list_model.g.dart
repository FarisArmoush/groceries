// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'grocery_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroceryListModel _$$_GroceryListModelFromJson(Map<String, dynamic> json) =>
    _$_GroceryListModel(
      uid: json['uid'] as int,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => GroceryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$_GroceryListModelToJson(_$_GroceryListModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'items': instance.items,
      'members': instance.members,
      'creationDate': instance.creationDate.toIso8601String(),
    };
