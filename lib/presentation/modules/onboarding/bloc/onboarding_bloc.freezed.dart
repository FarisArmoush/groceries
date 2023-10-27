// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateIndex,
    required TResult Function() markOnboardingAsViewed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateIndex,
    TResult? Function()? markOnboardingAsViewed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateIndex,
    TResult Function()? markOnboardingAsViewed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_MarkOnboardingAsViewed value)
        markOnboardingAsViewed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_MarkOnboardingAsViewed value)? markOnboardingAsViewed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_MarkOnboardingAsViewed value)? markOnboardingAsViewed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateIndexImplCopyWith<$Res> {
  factory _$$UpdateIndexImplCopyWith(
          _$UpdateIndexImpl value, $Res Function(_$UpdateIndexImpl) then) =
      __$$UpdateIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateIndexImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$UpdateIndexImpl>
    implements _$$UpdateIndexImplCopyWith<$Res> {
  __$$UpdateIndexImplCopyWithImpl(
      _$UpdateIndexImpl _value, $Res Function(_$UpdateIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateIndexImpl implements _UpdateIndex {
  const _$UpdateIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OnboardingEvent.updateIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIndexImplCopyWith<_$UpdateIndexImpl> get copyWith =>
      __$$UpdateIndexImplCopyWithImpl<_$UpdateIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateIndex,
    required TResult Function() markOnboardingAsViewed,
  }) {
    return updateIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateIndex,
    TResult? Function()? markOnboardingAsViewed,
  }) {
    return updateIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateIndex,
    TResult Function()? markOnboardingAsViewed,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_MarkOnboardingAsViewed value)
        markOnboardingAsViewed,
  }) {
    return updateIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_MarkOnboardingAsViewed value)? markOnboardingAsViewed,
  }) {
    return updateIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_MarkOnboardingAsViewed value)? markOnboardingAsViewed,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex(this);
    }
    return orElse();
  }
}

abstract class _UpdateIndex implements OnboardingEvent {
  const factory _UpdateIndex(final int index) = _$UpdateIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateIndexImplCopyWith<_$UpdateIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkOnboardingAsViewedImplCopyWith<$Res> {
  factory _$$MarkOnboardingAsViewedImplCopyWith(
          _$MarkOnboardingAsViewedImpl value,
          $Res Function(_$MarkOnboardingAsViewedImpl) then) =
      __$$MarkOnboardingAsViewedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkOnboardingAsViewedImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$MarkOnboardingAsViewedImpl>
    implements _$$MarkOnboardingAsViewedImplCopyWith<$Res> {
  __$$MarkOnboardingAsViewedImplCopyWithImpl(
      _$MarkOnboardingAsViewedImpl _value,
      $Res Function(_$MarkOnboardingAsViewedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkOnboardingAsViewedImpl implements _MarkOnboardingAsViewed {
  const _$MarkOnboardingAsViewedImpl();

  @override
  String toString() {
    return 'OnboardingEvent.markOnboardingAsViewed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkOnboardingAsViewedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateIndex,
    required TResult Function() markOnboardingAsViewed,
  }) {
    return markOnboardingAsViewed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateIndex,
    TResult? Function()? markOnboardingAsViewed,
  }) {
    return markOnboardingAsViewed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateIndex,
    TResult Function()? markOnboardingAsViewed,
    required TResult orElse(),
  }) {
    if (markOnboardingAsViewed != null) {
      return markOnboardingAsViewed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_MarkOnboardingAsViewed value)
        markOnboardingAsViewed,
  }) {
    return markOnboardingAsViewed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_MarkOnboardingAsViewed value)? markOnboardingAsViewed,
  }) {
    return markOnboardingAsViewed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_MarkOnboardingAsViewed value)? markOnboardingAsViewed,
    required TResult orElse(),
  }) {
    if (markOnboardingAsViewed != null) {
      return markOnboardingAsViewed(this);
    }
    return orElse();
  }
}

abstract class _MarkOnboardingAsViewed implements OnboardingEvent {
  const factory _MarkOnboardingAsViewed() = _$MarkOnboardingAsViewedImpl;
}

/// @nodoc
mixin _$OnboardingState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$OnboardingStateImplCopyWith(_$OnboardingStateImpl value,
          $Res Function(_$OnboardingStateImpl) then) =
      __$$OnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingStateImpl>
    implements _$$OnboardingStateImplCopyWith<$Res> {
  __$$OnboardingStateImplCopyWithImpl(
      _$OnboardingStateImpl _value, $Res Function(_$OnboardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$OnboardingStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnboardingStateImpl implements _OnboardingState {
  const _$OnboardingStateImpl({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'OnboardingState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStateImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      __$$OnboardingStateImplCopyWithImpl<_$OnboardingStateImpl>(
          this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState({final int index}) = _$OnboardingStateImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
