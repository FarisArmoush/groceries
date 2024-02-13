// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      categoryId: json['categoryId'] as String?,
      creationDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['creationDate'], const TimestampSerializer().fromJson),
      image: json['image'] as String?,
      name: json['name'] as String?,
      parentCategoryId: json['parentCategoryId'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'creationDate': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.creationDate, const TimestampSerializer().toJson),
      'image': instance.image,
      'name': instance.name,
      'parentCategoryId': instance.parentCategoryId,
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
