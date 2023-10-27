// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$LoginEventCopyWithImpl<$Res, _$UpdateEmailImpl>
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
    return 'LoginEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() login,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? login,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? login,
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
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Login value) login,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Login value)? login,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements LoginEvent {
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
    extends _$LoginEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
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
    return 'LoginEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() login,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? login,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? login,
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
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Login value) login,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Login value)? login,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements LoginEvent {
  const factory _UpdatePassword(final String password) = _$UpdatePasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleIsObscureImplCopyWith<$Res> {
  factory _$$ToggleIsObscureImplCopyWith(_$ToggleIsObscureImpl value,
          $Res Function(_$ToggleIsObscureImpl) then) =
      __$$ToggleIsObscureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleIsObscureImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ToggleIsObscureImpl>
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
    return 'LoginEvent.toggleIsObscure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleIsObscureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() login,
  }) {
    return toggleIsObscure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? login,
  }) {
    return toggleIsObscure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? login,
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
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Login value) login,
  }) {
    return toggleIsObscure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Login value)? login,
  }) {
    return toggleIsObscure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (toggleIsObscure != null) {
      return toggleIsObscure(this);
    }
    return orElse();
  }
}

abstract class _ToggleIsObscure implements LoginEvent {
  const factory _ToggleIsObscure() = _$ToggleIsObscureImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function() toggleIsObscure,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function()? toggleIsObscure,
    TResult? Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function()? toggleIsObscure,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ToggleIsObscure value) toggleIsObscure,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ToggleIsObscure value)? toggleIsObscure,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login() = _$LoginImpl;
}

/// @nodoc
mixin _$LoginState {
  EmailForm get email => throw _privateConstructorUsedError;
  LoginPasswordForm get password => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {EmailForm email,
      LoginPasswordForm password,
      FormzSubmissionStatus status,
      bool isValid,
      bool isObscure,
      String? errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? isValid = null,
    Object? isObscure = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPasswordForm,
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
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailForm email,
      LoginPasswordForm password,
      FormzSubmissionStatus status,
      bool isValid,
      bool isObscure,
      String? errorMessage});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? isValid = null,
    Object? isObscure = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LoginStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPasswordForm,
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

class _$LoginStateImpl extends _LoginState {
  _$LoginStateImpl(
      {this.email = const EmailForm.pure(),
      this.password = const LoginPasswordForm.pure(),
      this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.isObscure = true,
      this.errorMessage})
      : super._();

  @override
  @JsonKey()
  final EmailForm email;
  @override
  @JsonKey()
  final LoginPasswordForm password;
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
    return 'LoginState(email: $email, password: $password, status: $status, isValid: $isValid, isObscure: $isObscure, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, status, isValid, isObscure, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  factory _LoginState(
      {final EmailForm email,
      final LoginPasswordForm password,
      final FormzSubmissionStatus status,
      final bool isValid,
      final bool isObscure,
      final String? errorMessage}) = _$LoginStateImpl;
  _LoginState._() : super._();

  @override
  EmailForm get email;
  @override
  LoginPasswordForm get password;
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
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
