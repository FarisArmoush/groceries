// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String? get uid => throw _privateConstructorUsedError;
  GroceryListModel? get listModel => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  List<GroceryModel?>? get groceries => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {String? uid,
      GroceryListModel? listModel,
      DateTime? dueDate,
      List<GroceryModel?>? groceries,
      @TimestampSerializer() DateTime? creationDate});

  $GroceryListModelCopyWith<$Res>? get listModel;
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? listModel = freezed,
    Object? dueDate = freezed,
    Object? groceries = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      listModel: freezed == listModel
          ? _value.listModel
          : listModel // ignore: cast_nullable_to_non_nullable
              as GroceryListModel?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groceries: freezed == groceries
          ? _value.groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel?>?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroceryListModelCopyWith<$Res>? get listModel {
    if (_value.listModel == null) {
      return null;
    }

    return $GroceryListModelCopyWith<$Res>(_value.listModel!, (value) {
      return _then(_value.copyWith(listModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      GroceryListModel? listModel,
      DateTime? dueDate,
      List<GroceryModel?>? groceries,
      @TimestampSerializer() DateTime? creationDate});

  @override
  $GroceryListModelCopyWith<$Res>? get listModel;
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? listModel = freezed,
    Object? dueDate = freezed,
    Object? groceries = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$_TaskModel(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      listModel: freezed == listModel
          ? _value.listModel
          : listModel // ignore: cast_nullable_to_non_nullable
              as GroceryListModel?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groceries: freezed == groceries
          ? _value._groceries
          : groceries // ignore: cast_nullable_to_non_nullable
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
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {required this.uid,
      required this.listModel,
      required this.dueDate,
      required final List<GroceryModel?>? groceries,
      @TimestampSerializer() required this.creationDate})
      : _groceries = groceries;

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  final String? uid;
  @override
  final GroceryListModel? listModel;
  @override
  final DateTime? dueDate;
  final List<GroceryModel?>? _groceries;
  @override
  List<GroceryModel?>? get groceries {
    final value = _groceries;
    if (value == null) return null;
    if (_groceries is EqualUnmodifiableListView) return _groceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @TimestampSerializer()
  final DateTime? creationDate;

  @override
  String toString() {
    return 'TaskModel(uid: $uid, listModel: $listModel, dueDate: $dueDate, groceries: $groceries, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.listModel, listModel) ||
                other.listModel == listModel) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            const DeepCollectionEquality()
                .equals(other._groceries, _groceries) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, listModel, dueDate,
      const DeepCollectionEquality().hash(_groceries), creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
          {required final String? uid,
          required final GroceryListModel? listModel,
          required final DateTime? dueDate,
          required final List<GroceryModel?>? groceries,
          @TimestampSerializer() required final DateTime? creationDate}) =
      _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  String? get uid;
  @override
  GroceryListModel? get listModel;
  @override
  DateTime? get dueDate;
  @override
  List<GroceryModel?>? get groceries;
  @override
  @TimestampSerializer()
  DateTime? get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
