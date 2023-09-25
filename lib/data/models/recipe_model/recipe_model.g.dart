// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      items: (json['items'] as List<dynamic>?)
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

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'items': instance.items,
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
