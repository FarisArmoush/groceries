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

RegisterParam _$RegisterParamFromJson(Map<String, dynamic> json) {
  return _RegisterParam.fromJson(json);
}

/// @nodoc
mixin _$RegisterParam {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({String email, String password, String displayName});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterParamCopyWith<$Res>
    implements $RegisterParamCopyWith<$Res> {
  factory _$$_RegisterParamCopyWith(
          _$_RegisterParam value, $Res Function(_$_RegisterParam) then) =
      __$$_RegisterParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String displayName});
}

/// @nodoc
class __$$_RegisterParamCopyWithImpl<$Res>
    extends _$RegisterParamCopyWithImpl<$Res, _$_RegisterParam>
    implements _$$_RegisterParamCopyWith<$Res> {
  __$$_RegisterParamCopyWithImpl(
      _$_RegisterParam _value, $Res Function(_$_RegisterParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
  }) {
    return _then(_$_RegisterParam(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterParam implements _RegisterParam {
  const _$_RegisterParam(
      {required this.email, required this.password, required this.displayName});

  factory _$_RegisterParam.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterParamFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String displayName;

  @override
  String toString() {
    return 'RegisterParam(email: $email, password: $password, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterParam &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterParamCopyWith<_$_RegisterParam> get copyWith =>
      __$$_RegisterParamCopyWithImpl<_$_RegisterParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterParamToJson(
      this,
    );
  }
}

abstract class _RegisterParam implements RegisterParam {
  const factory _RegisterParam(
      {required final String email,
      required final String password,
      required final String displayName}) = _$_RegisterParam;

  factory _RegisterParam.fromJson(Map<String, dynamic> json) =
      _$_RegisterParam.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterParamCopyWith<_$_RegisterParam> get copyWith =>
      throw _privateConstructorUsedError;
}