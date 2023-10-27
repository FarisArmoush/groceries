// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? verifyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifyUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyUser value) verifyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyUser value)? verifyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyUser value)? verifyUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserEventCopyWith<$Res> {
  factory $VerifyUserEventCopyWith(
          VerifyUserEvent value, $Res Function(VerifyUserEvent) then) =
      _$VerifyUserEventCopyWithImpl<$Res, VerifyUserEvent>;
}

/// @nodoc
class _$VerifyUserEventCopyWithImpl<$Res, $Val extends VerifyUserEvent>
    implements $VerifyUserEventCopyWith<$Res> {
  _$VerifyUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerifyUserImplCopyWith<$Res> {
  factory _$$VerifyUserImplCopyWith(
          _$VerifyUserImpl value, $Res Function(_$VerifyUserImpl) then) =
      __$$VerifyUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyUserImplCopyWithImpl<$Res>
    extends _$VerifyUserEventCopyWithImpl<$Res, _$VerifyUserImpl>
    implements _$$VerifyUserImplCopyWith<$Res> {
  __$$VerifyUserImplCopyWithImpl(
      _$VerifyUserImpl _value, $Res Function(_$VerifyUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyUserImpl implements _VerifyUser {
  const _$VerifyUserImpl();

  @override
  String toString() {
    return 'VerifyUserEvent.verifyUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifyUser,
  }) {
    return verifyUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? verifyUser,
  }) {
    return verifyUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifyUser,
    required TResult orElse(),
  }) {
    if (verifyUser != null) {
      return verifyUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyUser value) verifyUser,
  }) {
    return verifyUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyUser value)? verifyUser,
  }) {
    return verifyUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyUser value)? verifyUser,
    required TResult orElse(),
  }) {
    if (verifyUser != null) {
      return verifyUser(this);
    }
    return orElse();
  }
}

abstract class _VerifyUser implements VerifyUserEvent {
  const factory _VerifyUser() = _$VerifyUserImpl;
}

/// @nodoc
mixin _$VerifyUserState {
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyUserStateCopyWith<VerifyUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserStateCopyWith<$Res> {
  factory $VerifyUserStateCopyWith(
          VerifyUserState value, $Res Function(VerifyUserState) then) =
      _$VerifyUserStateCopyWithImpl<$Res, VerifyUserState>;
  @useResult
  $Res call({BlocStatus status});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$VerifyUserStateCopyWithImpl<$Res, $Val extends VerifyUserState>
    implements $VerifyUserStateCopyWith<$Res> {
  _$VerifyUserStateCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyUserStateImplCopyWith<$Res>
    implements $VerifyUserStateCopyWith<$Res> {
  factory _$$VerifyUserStateImplCopyWith(_$VerifyUserStateImpl value,
          $Res Function(_$VerifyUserStateImpl) then) =
      __$$VerifyUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$VerifyUserStateImplCopyWithImpl<$Res>
    extends _$VerifyUserStateCopyWithImpl<$Res, _$VerifyUserStateImpl>
    implements _$$VerifyUserStateImplCopyWith<$Res> {
  __$$VerifyUserStateImplCopyWithImpl(
      _$VerifyUserStateImpl _value, $Res Function(_$VerifyUserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$VerifyUserStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$VerifyUserStateImpl extends _VerifyUserState {
  const _$VerifyUserStateImpl({this.status = const BlocStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'VerifyUserState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserStateImplCopyWith<_$VerifyUserStateImpl> get copyWith =>
      __$$VerifyUserStateImplCopyWithImpl<_$VerifyUserStateImpl>(
          this, _$identity);
}

abstract class _VerifyUserState extends VerifyUserState {
  const factory _VerifyUserState({final BlocStatus status}) =
      _$VerifyUserStateImpl;
  const _VerifyUserState._() : super._();

  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$VerifyUserStateImplCopyWith<_$VerifyUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
