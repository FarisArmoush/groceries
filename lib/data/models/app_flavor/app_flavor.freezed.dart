// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_flavor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppFlavor {
  String get apiUrl => throw _privateConstructorUsedError;
  FlavorEnvironments get environment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppFlavorCopyWith<AppFlavor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFlavorCopyWith<$Res> {
  factory $AppFlavorCopyWith(AppFlavor value, $Res Function(AppFlavor) then) =
      _$AppFlavorCopyWithImpl<$Res, AppFlavor>;
  @useResult
  $Res call({String apiUrl, FlavorEnvironments environment});
}

/// @nodoc
class _$AppFlavorCopyWithImpl<$Res, $Val extends AppFlavor>
    implements $AppFlavorCopyWith<$Res> {
  _$AppFlavorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUrl = null,
    Object? environment = null,
  }) {
    return _then(_value.copyWith(
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as FlavorEnvironments,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppFlavorImplCopyWith<$Res>
    implements $AppFlavorCopyWith<$Res> {
  factory _$$AppFlavorImplCopyWith(
          _$AppFlavorImpl value, $Res Function(_$AppFlavorImpl) then) =
      __$$AppFlavorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiUrl, FlavorEnvironments environment});
}

/// @nodoc
class __$$AppFlavorImplCopyWithImpl<$Res>
    extends _$AppFlavorCopyWithImpl<$Res, _$AppFlavorImpl>
    implements _$$AppFlavorImplCopyWith<$Res> {
  __$$AppFlavorImplCopyWithImpl(
      _$AppFlavorImpl _value, $Res Function(_$AppFlavorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiUrl = null,
    Object? environment = null,
  }) {
    return _then(_$AppFlavorImpl(
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as FlavorEnvironments,
    ));
  }
}

/// @nodoc

class _$AppFlavorImpl implements _AppFlavor {
  const _$AppFlavorImpl({required this.apiUrl, required this.environment});

  @override
  final String apiUrl;
  @override
  final FlavorEnvironments environment;

  @override
  String toString() {
    return 'AppFlavor(apiUrl: $apiUrl, environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppFlavorImpl &&
            (identical(other.apiUrl, apiUrl) || other.apiUrl == apiUrl) &&
            (identical(other.environment, environment) ||
                other.environment == environment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiUrl, environment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppFlavorImplCopyWith<_$AppFlavorImpl> get copyWith =>
      __$$AppFlavorImplCopyWithImpl<_$AppFlavorImpl>(this, _$identity);
}

abstract class _AppFlavor implements AppFlavor {
  const factory _AppFlavor(
      {required final String apiUrl,
      required final FlavorEnvironments environment}) = _$AppFlavorImpl;

  @override
  String get apiUrl;
  @override
  FlavorEnvironments get environment;
  @override
  @JsonKey(ignore: true)
  _$$AppFlavorImplCopyWith<_$AppFlavorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
