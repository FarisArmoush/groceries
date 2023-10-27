// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_display_name_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateDisplayNameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() updateDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? updateDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? updateDisplayName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayNameChanged value) displayNameChanged,
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayNameChanged value)? displayNameChanged,
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayNameChanged value)? displayNameChanged,
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDisplayNameEventCopyWith<$Res> {
  factory $UpdateDisplayNameEventCopyWith(UpdateDisplayNameEvent value,
          $Res Function(UpdateDisplayNameEvent) then) =
      _$UpdateDisplayNameEventCopyWithImpl<$Res, UpdateDisplayNameEvent>;
}

/// @nodoc
class _$UpdateDisplayNameEventCopyWithImpl<$Res,
        $Val extends UpdateDisplayNameEvent>
    implements $UpdateDisplayNameEventCopyWith<$Res> {
  _$UpdateDisplayNameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisplayNameChangedImplCopyWith<$Res> {
  factory _$$DisplayNameChangedImplCopyWith(_$DisplayNameChangedImpl value,
          $Res Function(_$DisplayNameChangedImpl) then) =
      __$$DisplayNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$DisplayNameChangedImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameEventCopyWithImpl<$Res, _$DisplayNameChangedImpl>
    implements _$$DisplayNameChangedImplCopyWith<$Res> {
  __$$DisplayNameChangedImplCopyWithImpl(_$DisplayNameChangedImpl _value,
      $Res Function(_$DisplayNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$DisplayNameChangedImpl(
      null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisplayNameChangedImpl implements _DisplayNameChanged {
  const _$DisplayNameChangedImpl(this.displayName);

  @override
  final String displayName;

  @override
  String toString() {
    return 'UpdateDisplayNameEvent.displayNameChanged(displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayNameChangedImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayNameChangedImplCopyWith<_$DisplayNameChangedImpl> get copyWith =>
      __$$DisplayNameChangedImplCopyWithImpl<_$DisplayNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() updateDisplayName,
  }) {
    return displayNameChanged(displayName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? updateDisplayName,
  }) {
    return displayNameChanged?.call(displayName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? updateDisplayName,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayNameChanged value) displayNameChanged,
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
  }) {
    return displayNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayNameChanged value)? displayNameChanged,
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
  }) {
    return displayNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayNameChanged value)? displayNameChanged,
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(this);
    }
    return orElse();
  }
}

abstract class _DisplayNameChanged implements UpdateDisplayNameEvent {
  const factory _DisplayNameChanged(final String displayName) =
      _$DisplayNameChangedImpl;

  String get displayName;
  @JsonKey(ignore: true)
  _$$DisplayNameChangedImplCopyWith<_$DisplayNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDisplayNameImplCopyWith<$Res> {
  factory _$$UpdateDisplayNameImplCopyWith(_$UpdateDisplayNameImpl value,
          $Res Function(_$UpdateDisplayNameImpl) then) =
      __$$UpdateDisplayNameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateDisplayNameImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameEventCopyWithImpl<$Res, _$UpdateDisplayNameImpl>
    implements _$$UpdateDisplayNameImplCopyWith<$Res> {
  __$$UpdateDisplayNameImplCopyWithImpl(_$UpdateDisplayNameImpl _value,
      $Res Function(_$UpdateDisplayNameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateDisplayNameImpl implements _UpdateDisplayName {
  const _$UpdateDisplayNameImpl();

  @override
  String toString() {
    return 'UpdateDisplayNameEvent.updateDisplayName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateDisplayNameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() updateDisplayName,
  }) {
    return updateDisplayName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? updateDisplayName,
  }) {
    return updateDisplayName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? updateDisplayName,
    required TResult orElse(),
  }) {
    if (updateDisplayName != null) {
      return updateDisplayName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayNameChanged value) displayNameChanged,
    required TResult Function(_UpdateDisplayName value) updateDisplayName,
  }) {
    return updateDisplayName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayNameChanged value)? displayNameChanged,
    TResult? Function(_UpdateDisplayName value)? updateDisplayName,
  }) {
    return updateDisplayName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayNameChanged value)? displayNameChanged,
    TResult Function(_UpdateDisplayName value)? updateDisplayName,
    required TResult orElse(),
  }) {
    if (updateDisplayName != null) {
      return updateDisplayName(this);
    }
    return orElse();
  }
}

abstract class _UpdateDisplayName implements UpdateDisplayNameEvent {
  const factory _UpdateDisplayName() = _$UpdateDisplayNameImpl;
}

/// @nodoc
mixin _$UpdateDisplayNameState {
  DisplayNameForm get displayName => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateDisplayNameStateCopyWith<UpdateDisplayNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDisplayNameStateCopyWith<$Res> {
  factory $UpdateDisplayNameStateCopyWith(UpdateDisplayNameState value,
          $Res Function(UpdateDisplayNameState) then) =
      _$UpdateDisplayNameStateCopyWithImpl<$Res, UpdateDisplayNameState>;
  @useResult
  $Res call(
      {DisplayNameForm displayName,
      FormzSubmissionStatus status,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class _$UpdateDisplayNameStateCopyWithImpl<$Res,
        $Val extends UpdateDisplayNameState>
    implements $UpdateDisplayNameStateCopyWith<$Res> {
  _$UpdateDisplayNameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? status = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayNameForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateDisplayNameStateImplCopyWith<$Res>
    implements $UpdateDisplayNameStateCopyWith<$Res> {
  factory _$$UpdateDisplayNameStateImplCopyWith(
          _$UpdateDisplayNameStateImpl value,
          $Res Function(_$UpdateDisplayNameStateImpl) then) =
      __$$UpdateDisplayNameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DisplayNameForm displayName,
      FormzSubmissionStatus status,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class __$$UpdateDisplayNameStateImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameStateCopyWithImpl<$Res,
        _$UpdateDisplayNameStateImpl>
    implements _$$UpdateDisplayNameStateImplCopyWith<$Res> {
  __$$UpdateDisplayNameStateImplCopyWithImpl(
      _$UpdateDisplayNameStateImpl _value,
      $Res Function(_$UpdateDisplayNameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? status = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$UpdateDisplayNameStateImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayNameForm,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateDisplayNameStateImpl extends _UpdateDisplayNameState {
  const _$UpdateDisplayNameStateImpl(
      {this.displayName = const DisplayNameForm.pure(),
      this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.errorMessage})
      : super._();

  @override
  @JsonKey()
  final DisplayNameForm displayName;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UpdateDisplayNameState(displayName: $displayName, status: $status, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDisplayNameStateImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, status, isValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDisplayNameStateImplCopyWith<_$UpdateDisplayNameStateImpl>
      get copyWith => __$$UpdateDisplayNameStateImplCopyWithImpl<
          _$UpdateDisplayNameStateImpl>(this, _$identity);
}

abstract class _UpdateDisplayNameState extends UpdateDisplayNameState {
  const factory _UpdateDisplayNameState(
      {final DisplayNameForm displayName,
      final FormzSubmissionStatus status,
      final bool isValid,
      final String? errorMessage}) = _$UpdateDisplayNameStateImpl;
  const _UpdateDisplayNameState._() : super._();

  @override
  DisplayNameForm get displayName;
  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$UpdateDisplayNameStateImplCopyWith<_$UpdateDisplayNameStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
