// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDetailsModelImpl _$$RecipeDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeDetailsModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GroceryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$RecipeDetailsModelImplToJson(
        _$RecipeDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'items': instance.items,
      'steps': instance.steps,
    };
