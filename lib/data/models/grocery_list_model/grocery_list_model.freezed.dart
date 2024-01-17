// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroceryListModel _$GroceryListModelFromJson(Map<String, dynamic> json) {
  return _GroceryListModel.fromJson(json);
}

/// @nodoc
mixin _$GroceryListModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<GroceryModel?>? get items => throw _privateConstructorUsedError;
  List<UserModel?>? get members => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryListModelCopyWith<GroceryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryListModelCopyWith<$Res> {
  factory $GroceryListModelCopyWith(
          GroceryListModel value, $Res Function(GroceryListModel) then) =
      _$GroceryListModelCopyWithImpl<$Res, GroceryListModel>;
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
class _$GroceryListModelCopyWithImpl<$Res, $Val extends GroceryListModel>
    implements $GroceryListModelCopyWith<$Res> {
  _$GroceryListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GroceryListModelImplCopyWith<$Res>
    implements $GroceryListModelCopyWith<$Res> {
  factory _$$GroceryListModelImplCopyWith(_$GroceryListModelImpl value,
          $Res Function(_$GroceryListModelImpl) then) =
      __$$GroceryListModelImplCopyWithImpl<$Res>;
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
class __$$GroceryListModelImplCopyWithImpl<$Res>
    extends _$GroceryListModelCopyWithImpl<$Res, _$GroceryListModelImpl>
    implements _$$GroceryListModelImplCopyWith<$Res> {
  __$$GroceryListModelImplCopyWithImpl(_$GroceryListModelImpl _value,
      $Res Function(_$GroceryListModelImpl) _then)
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
    return _then(_$GroceryListModelImpl(
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
class _$GroceryListModelImpl
    with DiagnosticableTreeMixin
    implements _GroceryListModel {
  const _$GroceryListModelImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required final List<GroceryModel?>? items,
      required final List<UserModel?>? members,
      @TimestampSerializer() required this.creationDate})
      : _items = items,
        _members = members;

  factory _$GroceryListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryListModelImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroceryListModel(id: $id, name: $name, imageUrl: $imageUrl, items: $items, members: $members, creationDate: $creationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroceryListModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('members', members))
      ..add(DiagnosticsProperty('creationDate', creationDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryListModelImpl &&
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
  _$$GroceryListModelImplCopyWith<_$GroceryListModelImpl> get copyWith =>
      __$$GroceryListModelImplCopyWithImpl<_$GroceryListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroceryListModelImplToJson(
      this,
    );
  }
}

abstract class _GroceryListModel implements GroceryListModel {
  const factory _GroceryListModel(
          {required final String? id,
          required final String? name,
          required final String? imageUrl,
          required final List<GroceryModel?>? items,
          required final List<UserModel?>? members,
          @TimestampSerializer() required final DateTime? creationDate}) =
      _$GroceryListModelImpl;

  factory _GroceryListModel.fromJson(Map<String, dynamic> json) =
      _$GroceryListModelImpl.fromJson;

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
  _$$GroceryListModelImplCopyWith<_$GroceryListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
