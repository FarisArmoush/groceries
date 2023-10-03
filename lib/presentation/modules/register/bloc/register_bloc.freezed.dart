// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) updateDisplayName,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String password) updateConfirmPassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? updateDisplayName,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String password)? updateConfirmPassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? updateDisplayName,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String password)? updateConfirmPassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateDisplayNameCopyWith<$Res> {
  factory _$$_UpdateDisplayNameCopyWith(_$_UpdateDisplayName value,
          $Res Function(_$_UpdateDisplayName) then) =
      __$$_UpdateDisplayNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$_UpdateDisplayNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_UpdateDisplayName>
    implements _$$_UpdateDisplayNameCopyWith<$Res> {
  __$$_UpdateDisplayNameCopyWithImpl(
      _$_UpdateDisplayName _value, $Res Function(_$_UpdateDisplayName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$_UpdateDisplayName(
      null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateDisplayName implements _UpdateDisplayName {
  const _$_UpdateDisplayName(this.displayName);

  @override
  final String displayName;

  @override
  String toString() {
    return 'RegisterEvent.updateDisplayName(displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDisplayName &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateDisplayNameCopyWith<_$_UpdateDisplayName> get copyWith =>
      __$$_UpdateDisplayNameCopyWithImpl<_$_UpdateDisplayName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) updateDisplayName,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String password) updateConfirmPassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() register,
  }) {
    return updateDisplayName(displayName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? updateDisplayName,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String password)? updateConfirmPassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? register,
  }) {
    return updateDisplayName?.call(displayName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? updateDisplayName,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String password)? updateConfirmPassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (updateDisplayName != null) {
      return updateDisplayName(displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Register value) register,
  }) {
    return updateDisplayName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Register value)? register,
  }) {
    return updateDisplayName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (updateDisplayName != null) {
      return updateDisplayName(this);
    }
    return orElse();
  }
}

abstract class _UpdateDisplayName implements RegisterEvent {
  const factory _UpdateDisplayName(final String displayName) =
      _$_UpdateDisplayName;

  String get displayName;
  @JsonKey(ignore: true)
  _$$_UpdateDisplayNameCopyWith<_$_UpdateDisplayName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEmailCopyWith<$Res> {
  factory _$$_UpdateEmailCopyWith(
          _$_UpdateEmail value, $Res Function(_$_UpdateEmail) then) =
      __$$_UpdateEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_UpdateEmailCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_UpdateEmail>
    implements _$$_UpdateEmailCopyWith<$Res> {
  __$$_UpdateEmailCopyWithImpl(
      _$_UpdateEmail _value, $Res Function(_$_UpdateEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_UpdateEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateEmail implements _UpdateEmail {
  const _$_UpdateEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEmailCopyWith<_$_UpdateEmail> get copyWith =>
      __$$_UpdateEmailCopyWithImpl<_$_UpdateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) updateDisplayName,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String password) updateConfirmPassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() register,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? updateDisplayName,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String password)? updateConfirmPassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? register,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? updateDisplayName,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String password)? updateConfirmPassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Register value) register,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Register value)? register,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements RegisterEvent {
  const factory _UpdateEmail(final String email) = _$_UpdateEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$_UpdateEmailCopyWith<_$_UpdateEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePasswordCopyWith<$Res> {
  factory _$$_UpdatePasswordCopyWith(
          _$_UpdatePassword value, $Res Function(_$_UpdatePassword) then) =
      __$$_UpdatePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_UpdatePasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_UpdatePassword>
    implements _$$_UpdatePasswordCopyWith<$Res> {
  __$$_UpdatePasswordCopyWithImpl(
      _$_UpdatePassword _value, $Res Function(_$_UpdatePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_UpdatePassword(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatePassword implements _UpdatePassword {
  const _$_UpdatePassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePassword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      __$$_UpdatePasswordCopyWithImpl<_$_UpdatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) updateDisplayName,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String password) updateConfirmPassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() register,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? updateDisplayName,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String password)? updateConfirmPassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? register,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? updateDisplayName,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String password)? updateConfirmPassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Register value) register,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Register value)? register,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements RegisterEvent {
  const factory _UpdatePassword(final String password) = _$_UpdatePassword;

  String get password;
  @JsonKey(ignore: true)
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateConfirmPasswordCopyWith<$Res> {
  factory _$$_UpdateConfirmPasswordCopyWith(_$_UpdateConfirmPassword value,
          $Res Function(_$_UpdateConfirmPassword) then) =
      __$$_UpdateConfirmPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_UpdateConfirmPasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_UpdateConfirmPassword>
    implements _$$_UpdateConfirmPasswordCopyWith<$Res> {
  __$$_UpdateConfirmPasswordCopyWithImpl(_$_UpdateConfirmPassword _value,
      $Res Function(_$_UpdateConfirmPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_UpdateConfirmPassword(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateConfirmPassword implements _UpdateConfirmPassword {
  const _$_UpdateConfirmPassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.updateConfirmPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateConfirmPassword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateConfirmPasswordCopyWith<_$_UpdateConfirmPassword> get copyWith =>
      __$$_UpdateConfirmPasswordCopyWithImpl<_$_UpdateConfirmPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) updateDisplayName,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String password) updateConfirmPassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() register,
  }) {
    return updateConfirmPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? updateDisplayName,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String password)? updateConfirmPassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? register,
  }) {
    return updateConfirmPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? updateDisplayName,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String password)? updateConfirmPassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (updateConfirmPassword != null) {
      return updateConfirmPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Register value) register,
  }) {
    return updateConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Register value)? register,
  }) {
    return updateConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (updateConfirmPassword != null) {
      return updateConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _UpdateConfirmPassword implements RegisterEvent {
  const factory _UpdateConfirmPassword(final String password) =
      _$_UpdateConfirmPassword;

  String get password;
  @JsonKey(ignore: true)
  _$$_UpdateConfirmPasswordCopyWith<_$_UpdateConfirmPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleIsObscureCopyWith<$Res> {
  factory _$$_ToggleIsObscureCopyWith(
          _$_ToggleIsObscure value, $Res Function(_$_ToggleIsObscure) then) =
      __$$_ToggleIsObscureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleIsObscureCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_ToggleIsObscure>
    implements _$$_ToggleIsObscureCopyWith<$Res> {
  __$$_ToggleIsObscureCopyWithImpl(
      _$_ToggleIsObscure _value, $Res Function(_$_ToggleIsObscure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleIsObscure implements _ToggleIsObscure {
  const _$_ToggleIsObscure();

  @override
  String toString() {
    return 'RegisterEvent.toggleIsObscure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleIsObscure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) updateDisplayName,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String password) updateConfirmPassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() register,
  }) {
    return toggleIsObscure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? updateDisplayName,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String password)? updateConfirmPassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? register,
  }) {
    return toggleIsObscure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? updateDisplayName,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String password)? updateConfirmPassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (toggleIsObscure != null) {
      return toggleIsObscure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Register value) register,
  }) {
    return toggleIsObscure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Register value)? register,
  }) {
    return toggleIsObscure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (toggleIsObscure != null) {
      return toggleIsObscure(this);
    }
    return orElse();
  }
}

abstract class _ToggleIsObscure implements RegisterEvent {
  const factory _ToggleIsObscure() = _$_ToggleIsObscure;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register();

  @override
  String toString() {
    return 'RegisterEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Register);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) updateDisplayName,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String password) updateConfirmPassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() register,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? updateDisplayName,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String password)? updateConfirmPassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? register,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? updateDisplayName,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String password)? updateConfirmPassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register() = _$_Register;
}

/// @nodoc
mixin _$RegisterState {
  DisplayNameForm get displayName => throw _privateConstructorUsedError;
  EmailForm get email => throw _privateConstructorUsedError;
  RegisterPasswordForm get password => throw _privateConstructorUsedError;
  ConfirmedPasswordForm get confirmPassword =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {DisplayNameForm displayName,
      EmailForm email,
      RegisterPasswordForm password,
      ConfirmedPasswordForm confirmPassword,
      FormzSubmissionStatus status,
      bool isValid,
      bool isObscure,
      String? errorMessage});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? isValid = null,
    Object? isObscure = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayNameForm,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPasswordForm,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DisplayNameForm displayName,
      EmailForm email,
      RegisterPasswordForm password,
      ConfirmedPasswordForm confirmPassword,
      FormzSubmissionStatus status,
      bool isValid,
      bool isObscure,
      String? errorMessage});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? isValid = null,
    Object? isObscure = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RegisterState(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayNameForm,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPasswordForm,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterState extends _RegisterState {
  _$_RegisterState(
      {this.displayName = const DisplayNameForm.pure(),
      this.email = const EmailForm.pure(),
      this.password = const RegisterPasswordForm.pure(),
      this.confirmPassword = const ConfirmedPasswordForm.pure(),
      this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.isObscure = true,
      this.errorMessage})
      : super._();

  @override
  @JsonKey()
  final DisplayNameForm displayName;
  @override
  @JsonKey()
  final EmailForm email;
  @override
  @JsonKey()
  final RegisterPasswordForm password;
  @override
  @JsonKey()
  final ConfirmedPasswordForm confirmPassword;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isObscure;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RegisterState(displayName: $displayName, email: $email, password: $password, confirmPassword: $confirmPassword, status: $status, isValid: $isValid, isObscure: $isObscure, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName, email, password,
      confirmPassword, status, isValid, isObscure, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  factory _RegisterState(
      {final DisplayNameForm displayName,
      final EmailForm email,
      final RegisterPasswordForm password,
      final ConfirmedPasswordForm confirmPassword,
      final FormzSubmissionStatus status,
      final bool isValid,
      final bool isObscure,
      final String? errorMessage}) = _$_RegisterState;
  _RegisterState._() : super._();

  @override
  DisplayNameForm get displayName;
  @override
  EmailForm get email;
  @override
  RegisterPasswordForm get password;
  @override
  ConfirmedPasswordForm get confirmPassword;
  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  @override
  bool get isObscure;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
