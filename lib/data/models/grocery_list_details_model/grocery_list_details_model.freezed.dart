// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_list_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroceryListDetailsModel _$GroceryListDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _GroceryListDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$GroceryListDetailsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<GroceryModel?>? get items => throw _privateConstructorUsedError;
  List<UserModel?>? get members => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryListDetailsModelCopyWith<GroceryListDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryListDetailsModelCopyWith<$Res> {
  factory $GroceryListDetailsModelCopyWith(GroceryListDetailsModel value,
          $Res Function(GroceryListDetailsModel) then) =
      _$GroceryListDetailsModelCopyWithImpl<$Res, GroceryListDetailsModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? imageUrl,
      List<GroceryModel?>? items,
      List<UserModel?>? members,
      @TimestampSerializer() DateTime? creationDate});
}

/// @nodoc
class _$GroceryListDetailsModelCopyWithImpl<$Res,
        $Val extends GroceryListDetailsModel>
    implements $GroceryListDetailsModelCopyWith<$Res> {
  _$GroceryListDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? members = freezed,
    Object? creationDate = freezed,
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
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel?>?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceryListDetailsModelImplCopyWith<$Res>
    implements $GroceryListDetailsModelCopyWith<$Res> {
  factory _$$GroceryListDetailsModelImplCopyWith(
          _$GroceryListDetailsModelImpl value,
          $Res Function(_$GroceryListDetailsModelImpl) then) =
      __$$GroceryListDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? imageUrl,
      List<GroceryModel?>? items,
      List<UserModel?>? members,
      @TimestampSerializer() DateTime? creationDate});
}

/// @nodoc
class __$$GroceryListDetailsModelImplCopyWithImpl<$Res>
    extends _$GroceryListDetailsModelCopyWithImpl<$Res,
        _$GroceryListDetailsModelImpl>
    implements _$$GroceryListDetailsModelImplCopyWith<$Res> {
  __$$GroceryListDetailsModelImplCopyWithImpl(
      _$GroceryListDetailsModelImpl _value,
      $Res Function(_$GroceryListDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? items = freezed,
    Object? members = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$GroceryListDetailsModelImpl(
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
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel?>?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroceryListDetailsModelImpl implements _GroceryListDetailsModel {
  _$GroceryListDetailsModelImpl(
      {this.id,
      this.name,
      this.imageUrl,
      final List<GroceryModel?>? items,
      final List<UserModel?>? members,
      @TimestampSerializer() this.creationDate})
      : _items = items,
        _members = members;

  factory _$GroceryListDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryListDetailsModelImplFromJson(json);

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

  final List<UserModel?>? _members;
  @override
  List<UserModel?>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @TimestampSerializer()
  final DateTime? creationDate;

  @override
  String toString() {
    return 'GroceryListDetailsModel(id: $id, name: $name, imageUrl: $imageUrl, items: $items, members: $members, creationDate: $creationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryListDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_members),
      creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryListDetailsModelImplCopyWith<_$GroceryListDetailsModelImpl>
      get copyWith => __$$GroceryListDetailsModelImplCopyWithImpl<
          _$GroceryListDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroceryListDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _GroceryListDetailsModel implements GroceryListDetailsModel {
  factory _GroceryListDetailsModel(
          {final String? id,
          final String? name,
          final String? imageUrl,
          final List<GroceryModel?>? items,
          final List<UserModel?>? members,
          @TimestampSerializer() final DateTime? creationDate}) =
      _$GroceryListDetailsModelImpl;

  factory _GroceryListDetailsModel.fromJson(Map<String, dynamic> json) =
      _$GroceryListDetailsModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  List<GroceryModel?>? get items;
  @override
  List<UserModel?>? get members;
  @override
  @TimestampSerializer()
  DateTime? get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$GroceryListDetailsModelImplCopyWith<_$GroceryListDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
