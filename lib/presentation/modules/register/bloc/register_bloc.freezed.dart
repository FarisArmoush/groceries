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
abstract class _$$UpdateDisplayNameImplCopyWith<$Res> {
  factory _$$UpdateDisplayNameImplCopyWith(_$UpdateDisplayNameImpl value,
          $Res Function(_$UpdateDisplayNameImpl) then) =
      __$$UpdateDisplayNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$UpdateDisplayNameImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateDisplayNameImpl>
    implements _$$UpdateDisplayNameImplCopyWith<$Res> {
  __$$UpdateDisplayNameImplCopyWithImpl(_$UpdateDisplayNameImpl _value,
      $Res Function(_$UpdateDisplayNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$UpdateDisplayNameImpl(
      null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDisplayNameImpl implements _UpdateDisplayName {
  const _$UpdateDisplayNameImpl(this.displayName);

  @override
  final String displayName;

  @override
  String toString() {
    return 'RegisterEvent.updateDisplayName(displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDisplayNameImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDisplayNameImplCopyWith<_$UpdateDisplayNameImpl> get copyWith =>
      __$$UpdateDisplayNameImplCopyWithImpl<_$UpdateDisplayNameImpl>(
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
      _$UpdateDisplayNameImpl;

  String get displayName;
  @JsonKey(ignore: true)
  _$$UpdateDisplayNameImplCopyWith<_$UpdateDisplayNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEmailImplCopyWith<$Res> {
  factory _$$UpdateEmailImplCopyWith(
          _$UpdateEmailImpl value, $Res Function(_$UpdateEmailImpl) then) =
      __$$UpdateEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$UpdateEmailImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateEmailImpl>
    implements _$$UpdateEmailImplCopyWith<$Res> {
  __$$UpdateEmailImplCopyWithImpl(
      _$UpdateEmailImpl _value, $Res Function(_$UpdateEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UpdateEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEmailImpl implements _UpdateEmail {
  const _$UpdateEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      __$$UpdateEmailImplCopyWithImpl<_$UpdateEmailImpl>(this, _$identity);

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
  const factory _UpdateEmail(final String email) = _$UpdateEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$UpdatePasswordImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordImpl implements _UpdatePassword {
  const _$UpdatePasswordImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      __$$UpdatePasswordImplCopyWithImpl<_$UpdatePasswordImpl>(
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
  const factory _UpdatePassword(final String password) = _$UpdatePasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateConfirmPasswordImplCopyWith<$Res> {
  factory _$$UpdateConfirmPasswordImplCopyWith(
          _$UpdateConfirmPasswordImpl value,
          $Res Function(_$UpdateConfirmPasswordImpl) then) =
      __$$UpdateConfirmPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UpdateConfirmPasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UpdateConfirmPasswordImpl>
    implements _$$UpdateConfirmPasswordImplCopyWith<$Res> {
  __$$UpdateConfirmPasswordImplCopyWithImpl(_$UpdateConfirmPasswordImpl _value,
      $Res Function(_$UpdateConfirmPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$UpdateConfirmPasswordImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateConfirmPasswordImpl implements _UpdateConfirmPassword {
  const _$UpdateConfirmPasswordImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.updateConfirmPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConfirmPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConfirmPasswordImplCopyWith<_$UpdateConfirmPasswordImpl>
      get copyWith => __$$UpdateConfirmPasswordImplCopyWithImpl<
          _$UpdateConfirmPasswordImpl>(this, _$identity);

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
      _$UpdateConfirmPasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$UpdateConfirmPasswordImplCopyWith<_$UpdateConfirmPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleIsObscureImplCopyWith<$Res> {
  factory _$$ToggleIsObscureImplCopyWith(_$ToggleIsObscureImpl value,
          $Res Function(_$ToggleIsObscureImpl) then) =
      __$$ToggleIsObscureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleIsObscureImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ToggleIsObscureImpl>
    implements _$$ToggleIsObscureImplCopyWith<$Res> {
  __$$ToggleIsObscureImplCopyWithImpl(
      _$ToggleIsObscureImpl _value, $Res Function(_$ToggleIsObscureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleIsObscureImpl implements _ToggleIsObscure {
  const _$ToggleIsObscureImpl();

  @override
  String toString() {
    return 'RegisterEvent.toggleIsObscure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleIsObscureImpl);
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
  const factory _ToggleIsObscure() = _$ToggleIsObscureImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl();

  @override
  String toString() {
    return 'RegisterEvent.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterImpl);
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
  const factory _Register() = _$RegisterImpl;
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
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
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
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
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
    return _then(_$RegisterStateImpl(
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

class _$RegisterStateImpl extends _RegisterState {
  _$RegisterStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
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
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
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
      final String? errorMessage}) = _$RegisterStateImpl;
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
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
