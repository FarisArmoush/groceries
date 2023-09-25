// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  String? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<GroceryModel?>? get items => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {String? uid,
      String? name,
      String? imageUrl,
      List<GroceryModel?>? items,
      @TimestampSerializer() DateTime? creationDate});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? items = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$_RecipeModelCopyWith(
          _$_RecipeModel value, $Res Function(_$_RecipeModel) then) =
      __$$_RecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      String? name,
      String? imageUrl,
      List<GroceryModel?>? items,
      @TimestampSerializer() DateTime? creationDate});
}

/// @nodoc
class __$$_RecipeModelCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$_RecipeModel>
    implements _$$_RecipeModelCopyWith<$Res> {
  __$$_RecipeModelCopyWithImpl(
      _$_RecipeModel _value, $Res Function(_$_RecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? items = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$_RecipeModel(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeModel with DiagnosticableTreeMixin implements _RecipeModel {
  const _$_RecipeModel(
      {required this.uid,
      required this.name,
      required this.imageUrl,
      required final List<GroceryModel?>? items,
      @TimestampSerializer() required this.creationDate})
      : _items = items;

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  final String? uid;
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

  @override
  @TimestampSerializer()
  final DateTime? creationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeModel(uid: $uid, name: $name, imageUrl: $imageUrl, items: $items, creationDate: $creationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeModel'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('creationDate', creationDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, imageUrl,
      const DeepCollectionEquality().hash(_items), creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      __$$_RecipeModelCopyWithImpl<_$_RecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeModelToJson(
      this,
    );
  }
}

abstract class _RecipeModel implements RecipeModel {
  const factory _RecipeModel(
          {required final String? uid,
          required final String? name,
          required final String? imageUrl,
          required final List<GroceryModel?>? items,
          @TimestampSerializer() required final DateTime? creationDate}) =
      _$_RecipeModel;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  String? get uid;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  List<GroceryModel?>? get items;
  @override
  @TimestampSerializer()
  DateTime? get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
