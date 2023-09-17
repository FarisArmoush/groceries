// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroceryModel _$GroceryModelFromJson(Map<String, dynamic> json) {
  return _GroceryModel.fromJson(json);
}

/// @nodoc
mixin _$GroceryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryModelCopyWith<GroceryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryModelCopyWith<$Res> {
  factory $GroceryModelCopyWith(
          GroceryModel value, $Res Function(GroceryModel) then) =
      _$GroceryModelCopyWithImpl<$Res, GroceryModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String imageUrl,
      String category,
      String notes,
      DateTime creationDate,
      bool isDone});
}

/// @nodoc
class _$GroceryModelCopyWithImpl<$Res, $Val extends GroceryModel>
    implements $GroceryModelCopyWith<$Res> {
  _$GroceryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? notes = null,
    Object? creationDate = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroceryModelCopyWith<$Res>
    implements $GroceryModelCopyWith<$Res> {
  factory _$$_GroceryModelCopyWith(
          _$_GroceryModel value, $Res Function(_$_GroceryModel) then) =
      __$$_GroceryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String imageUrl,
      String category,
      String notes,
      DateTime creationDate,
      bool isDone});
}

/// @nodoc
class __$$_GroceryModelCopyWithImpl<$Res>
    extends _$GroceryModelCopyWithImpl<$Res, _$_GroceryModel>
    implements _$$_GroceryModelCopyWith<$Res> {
  __$$_GroceryModelCopyWithImpl(
      _$_GroceryModel _value, $Res Function(_$_GroceryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? category = null,
    Object? notes = null,
    Object? creationDate = null,
    Object? isDone = null,
  }) {
    return _then(_$_GroceryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroceryModel with DiagnosticableTreeMixin implements _GroceryModel {
  const _$_GroceryModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.category,
      required this.notes,
      required this.creationDate,
      this.isDone = false});

  factory _$_GroceryModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroceryModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String category;
  @override
  final String notes;
  @override
  final DateTime creationDate;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroceryModel(id: $id, name: $name, imageUrl: $imageUrl, category: $category, notes: $notes, creationDate: $creationDate, isDone: $isDone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroceryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('creationDate', creationDate))
      ..add(DiagnosticsProperty('isDone', isDone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroceryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, imageUrl, category, notes, creationDate, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroceryModelCopyWith<_$_GroceryModel> get copyWith =>
      __$$_GroceryModelCopyWithImpl<_$_GroceryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroceryModelToJson(
      this,
    );
  }
}

abstract class _GroceryModel implements GroceryModel {
  const factory _GroceryModel(
      {required final String id,
      required final String name,
      required final String imageUrl,
      required final String category,
      required final String notes,
      required final DateTime creationDate,
      final bool isDone}) = _$_GroceryModel;

  factory _GroceryModel.fromJson(Map<String, dynamic> json) =
      _$_GroceryModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get category;
  @override
  String get notes;
  @override
  DateTime get creationDate;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryModelCopyWith<_$_GroceryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
