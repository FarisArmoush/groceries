// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_list_name_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateListNameEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateListNameEventCopyWith<UpdateListNameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateListNameEventCopyWith<$Res> {
  factory $UpdateListNameEventCopyWith(
          UpdateListNameEvent value, $Res Function(UpdateListNameEvent) then) =
      _$UpdateListNameEventCopyWithImpl<$Res, UpdateListNameEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$UpdateListNameEventCopyWithImpl<$Res, $Val extends UpdateListNameEvent>
    implements $UpdateListNameEventCopyWith<$Res> {
  _$UpdateListNameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res>
    implements $UpdateListNameEventCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$UpdateListNameEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'UpdateListNameEvent.update(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) update,
  }) {
    return update(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? update,
  }) {
    return update?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements UpdateListNameEvent {
  const factory _Update({required final String name}) = _$UpdateImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateListNameState {
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateListNameStateCopyWith<UpdateListNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateListNameStateCopyWith<$Res> {
  factory $UpdateListNameStateCopyWith(
          UpdateListNameState value, $Res Function(UpdateListNameState) then) =
      _$UpdateListNameStateCopyWithImpl<$Res, UpdateListNameState>;
  @useResult
  $Res call({BlocStatus status});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UpdateListNameStateCopyWithImpl<$Res, $Val extends UpdateListNameState>
    implements $UpdateListNameStateCopyWith<$Res> {
  _$UpdateListNameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
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
abstract class _$$UpdateListNameStateImplCopyWith<$Res>
    implements $UpdateListNameStateCopyWith<$Res> {
  factory _$$UpdateListNameStateImplCopyWith(_$UpdateListNameStateImpl value,
          $Res Function(_$UpdateListNameStateImpl) then) =
      __$$UpdateListNameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UpdateListNameStateImplCopyWithImpl<$Res>
    extends _$UpdateListNameStateCopyWithImpl<$Res, _$UpdateListNameStateImpl>
    implements _$$UpdateListNameStateImplCopyWith<$Res> {
  __$$UpdateListNameStateImplCopyWithImpl(_$UpdateListNameStateImpl _value,
      $Res Function(_$UpdateListNameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateListNameStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$UpdateListNameStateImpl extends _UpdateListNameState {
  const _$UpdateListNameStateImpl({this.status = const BlocStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'UpdateListNameState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListNameStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListNameStateImplCopyWith<_$UpdateListNameStateImpl> get copyWith =>
      __$$UpdateListNameStateImplCopyWithImpl<_$UpdateListNameStateImpl>(
          this, _$identity);
}

abstract class _UpdateListNameState extends UpdateListNameState {
  const factory _UpdateListNameState({final BlocStatus status}) =
      _$UpdateListNameStateImpl;
  const _UpdateListNameState._() : super._();

  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$UpdateListNameStateImplCopyWith<_$UpdateListNameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
