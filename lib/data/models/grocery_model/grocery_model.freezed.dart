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
  String? get categoryId => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get isDone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<RefinementsModel?>? get refinements =>
      throw _privateConstructorUsedError;

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
      {String? categoryId,
      @TimestampSerializer() DateTime? creationDate,
      String? id,
      String? image,
      bool? isDone,
      String? name,
      String? notes,
      List<RefinementsModel?>? refinements});
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
    Object? categoryId = freezed,
    Object? creationDate = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? isDone = freezed,
    Object? name = freezed,
    Object? notes = freezed,
    Object? refinements = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isDone: freezed == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      refinements: freezed == refinements
          ? _value.refinements
          : refinements // ignore: cast_nullable_to_non_nullable
              as List<RefinementsModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceryModelImplCopyWith<$Res>
    implements $GroceryModelCopyWith<$Res> {
  factory _$$GroceryModelImplCopyWith(
          _$GroceryModelImpl value, $Res Function(_$GroceryModelImpl) then) =
      __$$GroceryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? categoryId,
      @TimestampSerializer() DateTime? creationDate,
      String? id,
      String? image,
      bool? isDone,
      String? name,
      String? notes,
      List<RefinementsModel?>? refinements});
}

/// @nodoc
class __$$GroceryModelImplCopyWithImpl<$Res>
    extends _$GroceryModelCopyWithImpl<$Res, _$GroceryModelImpl>
    implements _$$GroceryModelImplCopyWith<$Res> {
  __$$GroceryModelImplCopyWithImpl(
      _$GroceryModelImpl _value, $Res Function(_$GroceryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? creationDate = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? isDone = freezed,
    Object? name = freezed,
    Object? notes = freezed,
    Object? refinements = freezed,
  }) {
    return _then(_$GroceryModelImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isDone: freezed == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      refinements: freezed == refinements
          ? _value._refinements
          : refinements // ignore: cast_nullable_to_non_nullable
              as List<RefinementsModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroceryModelImpl implements _GroceryModel {
  const _$GroceryModelImpl(
      {required this.categoryId,
      @TimestampSerializer() required this.creationDate,
      required this.id,
      required this.image,
      required this.isDone,
      required this.name,
      required this.notes,
      required final List<RefinementsModel?>? refinements})
      : _refinements = refinements;

  factory _$GroceryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryModelImplFromJson(json);

  @override
  final String? categoryId;
  @override
  @TimestampSerializer()
  final DateTime? creationDate;
  @override
  final String? id;
  @override
  final String? image;
  @override
  final bool? isDone;
  @override
  final String? name;
  @override
  final String? notes;
  final List<RefinementsModel?>? _refinements;
  @override
  List<RefinementsModel?>? get refinements {
    final value = _refinements;
    if (value == null) return null;
    if (_refinements is EqualUnmodifiableListView) return _refinements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GroceryModel(categoryId: $categoryId, creationDate: $creationDate, id: $id, image: $image, isDone: $isDone, name: $name, notes: $notes, refinements: $refinements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryModelImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._refinements, _refinements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryId,
      creationDate,
      id,
      image,
      isDone,
      name,
      notes,
      const DeepCollectionEquality().hash(_refinements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryModelImplCopyWith<_$GroceryModelImpl> get copyWith =>
      __$$GroceryModelImplCopyWithImpl<_$GroceryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroceryModelImplToJson(
      this,
    );
  }
}

abstract class _GroceryModel implements GroceryModel {
  const factory _GroceryModel(
          {required final String? categoryId,
          @TimestampSerializer() required final DateTime? creationDate,
          required final String? id,
          required final String? image,
          required final bool? isDone,
          required final String? name,
          required final String? notes,
          required final List<RefinementsModel?>? refinements}) =
      _$GroceryModelImpl;

  factory _GroceryModel.fromJson(Map<String, dynamic> json) =
      _$GroceryModelImpl.fromJson;

  @override
  String? get categoryId;
  @override
  @TimestampSerializer()
  DateTime? get creationDate;
  @override
  String? get id;
  @override
  String? get image;
  @override
  bool? get isDone;
  @override
  String? get name;
  @override
  String? get notes;
  @override
  List<RefinementsModel?>? get refinements;
  @override
  @JsonKey(ignore: true)
  _$$GroceryModelImplCopyWith<_$GroceryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
