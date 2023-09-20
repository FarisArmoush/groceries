// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginParam _$LoginParamFromJson(Map<String, dynamic> json) {
  return _LoginParam.fromJson(json);
}

/// @nodoc
mixin _$LoginParam {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginParamCopyWith<LoginParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamCopyWith<$Res> {
  factory $LoginParamCopyWith(
          LoginParam value, $Res Function(LoginParam) then) =
      _$LoginParamCopyWithImpl<$Res, LoginParam>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginParamCopyWithImpl<$Res, $Val extends LoginParam>
    implements $LoginParamCopyWith<$Res> {
  _$LoginParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginParamCopyWith<$Res>
    implements $LoginParamCopyWith<$Res> {
  factory _$$_LoginParamCopyWith(
          _$_LoginParam value, $Res Function(_$_LoginParam) then) =
      __$$_LoginParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginParamCopyWithImpl<$Res>
    extends _$LoginParamCopyWithImpl<$Res, _$_LoginParam>
    implements _$$_LoginParamCopyWith<$Res> {
  __$$_LoginParamCopyWithImpl(
      _$_LoginParam _value, $Res Function(_$_LoginParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginParam(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginParam implements _LoginParam {
  const _$_LoginParam({required this.email, required this.password});

  factory _$_LoginParam.fromJson(Map<String, dynamic> json) =>
      _$$_LoginParamFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginParam(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginParam &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginParamCopyWith<_$_LoginParam> get copyWith =>
      __$$_LoginParamCopyWithImpl<_$_LoginParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginParamToJson(
      this,
    );
  }
}

abstract class _LoginParam implements LoginParam {
  const factory _LoginParam(
      {required final String email,
      required final String password}) = _$_LoginParam;

  factory _LoginParam.fromJson(Map<String, dynamic> json) =
      _$_LoginParam.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginParamCopyWith<_$_LoginParam> get copyWith =>
      throw _privateConstructorUsedError;
}