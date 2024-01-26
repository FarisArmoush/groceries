// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterParam {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterParamCopyWith<RegisterParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParamCopyWith<$Res> {
  factory $RegisterParamCopyWith(
          RegisterParam value, $Res Function(RegisterParam) then) =
      _$RegisterParamCopyWithImpl<$Res, RegisterParam>;
  @useResult
  $Res call(
      {String email, String password, String displayName, String imagePath});
}

/// @nodoc
class _$RegisterParamCopyWithImpl<$Res, $Val extends RegisterParam>
    implements $RegisterParamCopyWith<$Res> {
  _$RegisterParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterParamImplCopyWith<$Res>
    implements $RegisterParamCopyWith<$Res> {
  factory _$$RegisterParamImplCopyWith(
          _$RegisterParamImpl value, $Res Function(_$RegisterParamImpl) then) =
      __$$RegisterParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email, String password, String displayName, String imagePath});
}

/// @nodoc
class __$$RegisterParamImplCopyWithImpl<$Res>
    extends _$RegisterParamCopyWithImpl<$Res, _$RegisterParamImpl>
    implements _$$RegisterParamImplCopyWith<$Res> {
  __$$RegisterParamImplCopyWithImpl(
      _$RegisterParamImpl _value, $Res Function(_$RegisterParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
    Object? imagePath = null,
  }) {
    return _then(_$RegisterParamImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterParamImpl implements _RegisterParam {
  const _$RegisterParamImpl(
      {required this.email,
      required this.password,
      required this.displayName,
      required this.imagePath});

  @override
  final String email;
  @override
  final String password;
  @override
  final String displayName;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'RegisterParam(email: $email, password: $password, displayName: $displayName, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterParamImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, displayName, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterParamImplCopyWith<_$RegisterParamImpl> get copyWith =>
      __$$RegisterParamImplCopyWithImpl<_$RegisterParamImpl>(this, _$identity);
}

abstract class _RegisterParam implements RegisterParam {
  const factory _RegisterParam(
      {required final String email,
      required final String password,
      required final String displayName,
      required final String imagePath}) = _$RegisterParamImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String get displayName;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$RegisterParamImplCopyWith<_$RegisterParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
