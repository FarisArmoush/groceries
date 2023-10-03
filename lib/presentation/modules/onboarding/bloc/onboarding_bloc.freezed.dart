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
abstract class _$$_UpdateIndexCopyWith<$Res> {
  factory _$$_UpdateIndexCopyWith(
          _$_UpdateIndex value, $Res Function(_$_UpdateIndex) then) =
      __$$_UpdateIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_UpdateIndexCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_UpdateIndex>
    implements _$$_UpdateIndexCopyWith<$Res> {
  __$$_UpdateIndexCopyWithImpl(
      _$_UpdateIndex _value, $Res Function(_$_UpdateIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_UpdateIndex(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateIndex implements _UpdateIndex {
  const _$_UpdateIndex(this.index);

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
            other is _$_UpdateIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateIndexCopyWith<_$_UpdateIndex> get copyWith =>
      __$$_UpdateIndexCopyWithImpl<_$_UpdateIndex>(this, _$identity);

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
  const factory _UpdateIndex(final int index) = _$_UpdateIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$_UpdateIndexCopyWith<_$_UpdateIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MarkOnboardingAsViewedCopyWith<$Res> {
  factory _$$_MarkOnboardingAsViewedCopyWith(_$_MarkOnboardingAsViewed value,
          $Res Function(_$_MarkOnboardingAsViewed) then) =
      __$$_MarkOnboardingAsViewedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MarkOnboardingAsViewedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_MarkOnboardingAsViewed>
    implements _$$_MarkOnboardingAsViewedCopyWith<$Res> {
  __$$_MarkOnboardingAsViewedCopyWithImpl(_$_MarkOnboardingAsViewed _value,
      $Res Function(_$_MarkOnboardingAsViewed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MarkOnboardingAsViewed implements _MarkOnboardingAsViewed {
  const _$_MarkOnboardingAsViewed();

  @override
  String toString() {
    return 'OnboardingEvent.markOnboardingAsViewed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkOnboardingAsViewed);
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
  const factory _MarkOnboardingAsViewed() = _$_MarkOnboardingAsViewed;
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
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_OnboardingState>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_OnboardingState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState({this.index = 0});

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
            other is _$_OnboardingState &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState({final int index}) = _$_OnboardingState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
