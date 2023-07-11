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
  int get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<GroceryModel> get items => throw _privateConstructorUsedError;
  List<UserModel> get members => throw _privateConstructorUsedError;

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
      {int uid,
      String name,
      String imageUrl,
      List<GroceryModel> items,
      List<UserModel> members});
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
    Object? uid = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? items = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroceryListModelCopyWith<$Res>
    implements $GroceryListModelCopyWith<$Res> {
  factory _$$_GroceryListModelCopyWith(
          _$_GroceryListModel value, $Res Function(_$_GroceryListModel) then) =
      __$$_GroceryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int uid,
      String name,
      String imageUrl,
      List<GroceryModel> items,
      List<UserModel> members});
}

/// @nodoc
class __$$_GroceryListModelCopyWithImpl<$Res>
    extends _$GroceryListModelCopyWithImpl<$Res, _$_GroceryListModel>
    implements _$$_GroceryListModelCopyWith<$Res> {
  __$$_GroceryListModelCopyWithImpl(
      _$_GroceryListModel _value, $Res Function(_$_GroceryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? items = null,
    Object? members = null,
  }) {
    return _then(_$_GroceryListModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroceryListModel
    with DiagnosticableTreeMixin
    implements _GroceryListModel {
  const _$_GroceryListModel(
      {required this.uid,
      required this.name,
      required this.imageUrl,
      required final List<GroceryModel> items,
      required final List<UserModel> members})
      : _items = items,
        _members = members;

  factory _$_GroceryListModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroceryListModelFromJson(json);

  @override
  final int uid;
  @override
  final String name;
  @override
  final String imageUrl;
  final List<GroceryModel> _items;
  @override
  List<GroceryModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<UserModel> _members;
  @override
  List<UserModel> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroceryListModel(uid: $uid, name: $name, imageUrl: $imageUrl, items: $items, members: $members)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroceryListModel'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('members', members));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroceryListModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      name,
      imageUrl,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroceryListModelCopyWith<_$_GroceryListModel> get copyWith =>
      __$$_GroceryListModelCopyWithImpl<_$_GroceryListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroceryListModelToJson(
      this,
    );
  }
}

abstract class _GroceryListModel implements GroceryListModel {
  const factory _GroceryListModel(
      {required final int uid,
      required final String name,
      required final String imageUrl,
      required final List<GroceryModel> items,
      required final List<UserModel> members}) = _$_GroceryListModel;

  factory _GroceryListModel.fromJson(Map<String, dynamic> json) =
      _$_GroceryListModel.fromJson;

  @override
  int get uid;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  List<GroceryModel> get items;
  @override
  List<UserModel> get members;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryListModelCopyWith<_$_GroceryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
