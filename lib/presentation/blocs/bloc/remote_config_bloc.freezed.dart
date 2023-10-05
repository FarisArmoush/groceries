// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppVersion value) getAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppVersion value)? getAppVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppVersion value)? getAppVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigEventCopyWith<$Res> {
  factory $RemoteConfigEventCopyWith(
          RemoteConfigEvent value, $Res Function(RemoteConfigEvent) then) =
      _$RemoteConfigEventCopyWithImpl<$Res, RemoteConfigEvent>;
}

/// @nodoc
class _$RemoteConfigEventCopyWithImpl<$Res, $Val extends RemoteConfigEvent>
    implements $RemoteConfigEventCopyWith<$Res> {
  _$RemoteConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAppVersionCopyWith<$Res> {
  factory _$$_GetAppVersionCopyWith(
          _$_GetAppVersion value, $Res Function(_$_GetAppVersion) then) =
      __$$_GetAppVersionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAppVersionCopyWithImpl<$Res>
    extends _$RemoteConfigEventCopyWithImpl<$Res, _$_GetAppVersion>
    implements _$$_GetAppVersionCopyWith<$Res> {
  __$$_GetAppVersionCopyWithImpl(
      _$_GetAppVersion _value, $Res Function(_$_GetAppVersion) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAppVersion implements _GetAppVersion {
  const _$_GetAppVersion();

  @override
  String toString() {
    return 'RemoteConfigEvent.getAppVersion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAppVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppVersion,
  }) {
    return getAppVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppVersion,
  }) {
    return getAppVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppVersion,
    required TResult orElse(),
  }) {
    if (getAppVersion != null) {
      return getAppVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppVersion value) getAppVersion,
  }) {
    return getAppVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppVersion value)? getAppVersion,
  }) {
    return getAppVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppVersion value)? getAppVersion,
    required TResult orElse(),
  }) {
    if (getAppVersion != null) {
      return getAppVersion(this);
    }
    return orElse();
  }
}

abstract class _GetAppVersion implements RemoteConfigEvent {
  const factory _GetAppVersion() = _$_GetAppVersion;
}

/// @nodoc
mixin _$RemoteConfigState {
  String get appVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) then) =
      _$RemoteConfigStateCopyWithImpl<$Res, RemoteConfigState>;
  @useResult
  $Res call({String appVersion});
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res, $Val extends RemoteConfigState>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
  }) {
    return _then(_value.copyWith(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteConfigStateCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$$_RemoteConfigStateCopyWith(_$_RemoteConfigState value,
          $Res Function(_$_RemoteConfigState) then) =
      __$$_RemoteConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appVersion});
}

/// @nodoc
class __$$_RemoteConfigStateCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res, _$_RemoteConfigState>
    implements _$$_RemoteConfigStateCopyWith<$Res> {
  __$$_RemoteConfigStateCopyWithImpl(
      _$_RemoteConfigState _value, $Res Function(_$_RemoteConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
  }) {
    return _then(_$_RemoteConfigState(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoteConfigState extends _RemoteConfigState {
  const _$_RemoteConfigState({this.appVersion = 'Default App Version Value'})
      : super._();

  @override
  @JsonKey()
  final String appVersion;

  @override
  String toString() {
    return 'RemoteConfigState(appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteConfigState &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteConfigStateCopyWith<_$_RemoteConfigState> get copyWith =>
      __$$_RemoteConfigStateCopyWithImpl<_$_RemoteConfigState>(
          this, _$identity);
}

abstract class _RemoteConfigState extends RemoteConfigState {
  const factory _RemoteConfigState({final String appVersion}) =
      _$_RemoteConfigState;
  const _RemoteConfigState._() : super._();

  @override
  String get appVersion;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteConfigStateCopyWith<_$_RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}