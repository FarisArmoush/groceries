// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_list_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroceryListDetailsModelImpl _$$GroceryListDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroceryListDetailsModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GroceryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['creationDate'], const TimestampSerializer().fromJson),
    );

Map<String, dynamic> _$$GroceryListDetailsModelImplToJson(
        _$GroceryListDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'items': instance.items,
      'members': instance.members,
      'creationDate': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.creationDate, const TimestampSerializer().toJson),
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
