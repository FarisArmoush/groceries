// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataState {
  String? get email => throw _privateConstructorUsedError;
  bool? get emailVerified => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataStateCopyWith<UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
  @useResult
  $Res call(
      {String? email,
      bool? emailVerified,
      String? displayName,
      String? creationDate});
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? displayName = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataStateImplCopyWith<$Res>
    implements $UserDataStateCopyWith<$Res> {
  factory _$$UserDataStateImplCopyWith(
          _$UserDataStateImpl value, $Res Function(_$UserDataStateImpl) then) =
      __$$UserDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      bool? emailVerified,
      String? displayName,
      String? creationDate});
}

/// @nodoc
class __$$UserDataStateImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataStateImpl>
    implements _$$UserDataStateImplCopyWith<$Res> {
  __$$UserDataStateImplCopyWithImpl(
      _$UserDataStateImpl _value, $Res Function(_$UserDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? displayName = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$UserDataStateImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserDataStateImpl
    with DiagnosticableTreeMixin
    implements _UserDataState {
  const _$UserDataStateImpl(
      {this.email, this.emailVerified, this.displayName, this.creationDate});

  @override
  final String? email;
  @override
  final bool? emailVerified;
  @override
  final String? displayName;
  @override
  final String? creationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDataState(email: $email, emailVerified: $emailVerified, displayName: $displayName, creationDate: $creationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDataState'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailVerified', emailVerified))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('creationDate', creationDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, emailVerified, displayName, creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataStateImplCopyWith<_$UserDataStateImpl> get copyWith =>
      __$$UserDataStateImplCopyWithImpl<_$UserDataStateImpl>(this, _$identity);
}

abstract class _UserDataState implements UserDataState {
  const factory _UserDataState(
      {final String? email,
      final bool? emailVerified,
      final String? displayName,
      final String? creationDate}) = _$UserDataStateImpl;

  @override
  String? get email;
  @override
  bool? get emailVerified;
  @override
  String? get displayName;
  @override
  String? get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$UserDataStateImplCopyWith<_$UserDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
