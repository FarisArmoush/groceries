// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyTasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMyTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMyTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMyTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMyTasks value) loadMyTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMyTasks value)? loadMyTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMyTasks value)? loadMyTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyTasksEventCopyWith<$Res> {
  factory $MyTasksEventCopyWith(
          MyTasksEvent value, $Res Function(MyTasksEvent) then) =
      _$MyTasksEventCopyWithImpl<$Res, MyTasksEvent>;
}

/// @nodoc
class _$MyTasksEventCopyWithImpl<$Res, $Val extends MyTasksEvent>
    implements $MyTasksEventCopyWith<$Res> {
  _$MyTasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadMyTasksCopyWith<$Res> {
  factory _$$_LoadMyTasksCopyWith(
          _$_LoadMyTasks value, $Res Function(_$_LoadMyTasks) then) =
      __$$_LoadMyTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMyTasksCopyWithImpl<$Res>
    extends _$MyTasksEventCopyWithImpl<$Res, _$_LoadMyTasks>
    implements _$$_LoadMyTasksCopyWith<$Res> {
  __$$_LoadMyTasksCopyWithImpl(
      _$_LoadMyTasks _value, $Res Function(_$_LoadMyTasks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMyTasks implements _LoadMyTasks {
  const _$_LoadMyTasks();

  @override
  String toString() {
    return 'MyTasksEvent.loadMyTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMyTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMyTasks,
  }) {
    return loadMyTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMyTasks,
  }) {
    return loadMyTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMyTasks,
    required TResult orElse(),
  }) {
    if (loadMyTasks != null) {
      return loadMyTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMyTasks value) loadMyTasks,
  }) {
    return loadMyTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMyTasks value)? loadMyTasks,
  }) {
    return loadMyTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMyTasks value)? loadMyTasks,
    required TResult orElse(),
  }) {
    if (loadMyTasks != null) {
      return loadMyTasks(this);
    }
    return orElse();
  }
}

abstract class _LoadMyTasks implements MyTasksEvent {
  const factory _LoadMyTasks() = _$_LoadMyTasks;
}

/// @nodoc
mixin _$MyTasksState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<TaskModel> get myTasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyTasksStateCopyWith<MyTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyTasksStateCopyWith<$Res> {
  factory $MyTasksStateCopyWith(
          MyTasksState value, $Res Function(MyTasksState) then) =
      _$MyTasksStateCopyWithImpl<$Res, MyTasksState>;
  @useResult
  $Res call({BlocStatus status, List<TaskModel> myTasks});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$MyTasksStateCopyWithImpl<$Res, $Val extends MyTasksState>
    implements $MyTasksStateCopyWith<$Res> {
  _$MyTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myTasks = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      myTasks: null == myTasks
          ? _value.myTasks
          : myTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStatusCopyWith<$Res> get status {
    return $BlocStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyTasksStateCopyWith<$Res>
    implements $MyTasksStateCopyWith<$Res> {
  factory _$$_MyTasksStateCopyWith(
          _$_MyTasksState value, $Res Function(_$_MyTasksState) then) =
      __$$_MyTasksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<TaskModel> myTasks});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_MyTasksStateCopyWithImpl<$Res>
    extends _$MyTasksStateCopyWithImpl<$Res, _$_MyTasksState>
    implements _$$_MyTasksStateCopyWith<$Res> {
  __$$_MyTasksStateCopyWithImpl(
      _$_MyTasksState _value, $Res Function(_$_MyTasksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myTasks = null,
  }) {
    return _then(_$_MyTasksState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      myTasks: null == myTasks
          ? _value._myTasks
          : myTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$_MyTasksState extends _MyTasksState {
  const _$_MyTasksState(
      {this.status = const BlocStatus.initial(),
      final List<TaskModel> myTasks = const <TaskModel>[]})
      : _myTasks = myTasks,
        super._();

  @override
  @JsonKey()
  final BlocStatus status;
  final List<TaskModel> _myTasks;
  @override
  @JsonKey()
  List<TaskModel> get myTasks {
    if (_myTasks is EqualUnmodifiableListView) return _myTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myTasks);
  }

  @override
  String toString() {
    return 'MyTasksState(status: $status, myTasks: $myTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyTasksState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._myTasks, _myTasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_myTasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyTasksStateCopyWith<_$_MyTasksState> get copyWith =>
      __$$_MyTasksStateCopyWithImpl<_$_MyTasksState>(this, _$identity);
}

abstract class _MyTasksState extends MyTasksState {
  const factory _MyTasksState(
      {final BlocStatus status,
      final List<TaskModel> myTasks}) = _$_MyTasksState;
  const _MyTasksState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<TaskModel> get myTasks;
  @override
  @JsonKey(ignore: true)
  _$$_MyTasksStateCopyWith<_$_MyTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}
