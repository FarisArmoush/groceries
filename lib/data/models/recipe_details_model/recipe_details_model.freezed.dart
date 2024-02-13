// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDetailsModel _$RecipeDetailsModelFromJson(Map<String, dynamic> json) {
  return _RecipeDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetailsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<GroceryModel?>? get items => throw _privateConstructorUsedError;
  List<String>? get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailsModelCopyWith<RecipeDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsModelCopyWith<$Res> {
  factory $RecipeDetailsModelCopyWith(
          RecipeDetailsModel value, $Res Function(RecipeDetailsModel) then) =
      _$RecipeDetailsModelCopyWithImpl<$Res, RecipeDetailsModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? imageUrl,
      List<GroceryModel?>? items,
      List<String>? steps});
}

/// @nodoc
class _$RecipeDetailsModelCopyWithImpl<$Res, $Val extends RecipeDetailsModel>
    implements $RecipeDetailsModelCopyWith<$Res> {
  _$RecipeDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? items = freezed,
    Object? steps = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel?>?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDetailsModelImplCopyWith<$Res>
    implements $RecipeDetailsModelCopyWith<$Res> {
  factory _$$RecipeDetailsModelImplCopyWith(_$RecipeDetailsModelImpl value,
          $Res Function(_$RecipeDetailsModelImpl) then) =
      __$$RecipeDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? imageUrl,
      List<GroceryModel?>? items,
      List<String>? steps});
}

/// @nodoc
class __$$RecipeDetailsModelImplCopyWithImpl<$Res>
    extends _$RecipeDetailsModelCopyWithImpl<$Res, _$RecipeDetailsModelImpl>
    implements _$$RecipeDetailsModelImplCopyWith<$Res> {
  __$$RecipeDetailsModelImplCopyWithImpl(_$RecipeDetailsModelImpl _value,
      $Res Function(_$RecipeDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? items = freezed,
    Object? steps = freezed,
  }) {
    return _then(_$RecipeDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel?>?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDetailsModelImpl implements _RecipeDetailsModel {
  _$RecipeDetailsModelImpl(
      {this.id,
      this.name,
      this.imageUrl,
      final List<GroceryModel?>? items,
      final List<String>? steps = const <String>[]})
      : _items = items,
        _steps = steps;

  factory _$RecipeDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDetailsModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? imageUrl;
  final List<GroceryModel?>? _items;
  @override
  List<GroceryModel?>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _steps;
  @override
  @JsonKey()
  List<String>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecipeDetailsModel(id: $id, name: $name, imageUrl: $imageUrl, items: $items, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailsModelImplCopyWith<_$RecipeDetailsModelImpl> get copyWith =>
      __$$RecipeDetailsModelImplCopyWithImpl<_$RecipeDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeDetailsModel implements RecipeDetailsModel {
  factory _RecipeDetailsModel(
      {final String? id,
      final String? name,
      final String? imageUrl,
      final List<GroceryModel?>? items,
      final List<String>? steps}) = _$RecipeDetailsModelImpl;

  factory _RecipeDetailsModel.fromJson(Map<String, dynamic> json) =
      _$RecipeDetailsModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  List<GroceryModel?>? get items;
  @override
  List<String>? get steps;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailsModelImplCopyWith<_$RecipeDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
