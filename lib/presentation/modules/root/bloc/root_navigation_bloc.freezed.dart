// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootNavigationEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) navigateToIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? navigateToIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? navigateToIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToIndex value) navigateToIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToIndex value)? navigateToIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToIndex value)? navigateToIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootNavigationEventCopyWith<RootNavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootNavigationEventCopyWith<$Res> {
  factory $RootNavigationEventCopyWith(
          RootNavigationEvent value, $Res Function(RootNavigationEvent) then) =
      _$RootNavigationEventCopyWithImpl<$Res, RootNavigationEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$RootNavigationEventCopyWithImpl<$Res, $Val extends RootNavigationEvent>
    implements $RootNavigationEventCopyWith<$Res> {
  _$RootNavigationEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_NavigateToIndexCopyWith<$Res>
    implements $RootNavigationEventCopyWith<$Res> {
  factory _$$_NavigateToIndexCopyWith(
          _$_NavigateToIndex value, $Res Function(_$_NavigateToIndex) then) =
      __$$_NavigateToIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_NavigateToIndexCopyWithImpl<$Res>
    extends _$RootNavigationEventCopyWithImpl<$Res, _$_NavigateToIndex>
    implements _$$_NavigateToIndexCopyWith<$Res> {
  __$$_NavigateToIndexCopyWithImpl(
      _$_NavigateToIndex _value, $Res Function(_$_NavigateToIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_NavigateToIndex(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NavigateToIndex implements _NavigateToIndex {
  const _$_NavigateToIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'RootNavigationEvent.navigateToIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateToIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigateToIndexCopyWith<_$_NavigateToIndex> get copyWith =>
      __$$_NavigateToIndexCopyWithImpl<_$_NavigateToIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) navigateToIndex,
  }) {
    return navigateToIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? navigateToIndex,
  }) {
    return navigateToIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? navigateToIndex,
    required TResult orElse(),
  }) {
    if (navigateToIndex != null) {
      return navigateToIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToIndex value) navigateToIndex,
  }) {
    return navigateToIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToIndex value)? navigateToIndex,
  }) {
    return navigateToIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToIndex value)? navigateToIndex,
    required TResult orElse(),
  }) {
    if (navigateToIndex != null) {
      return navigateToIndex(this);
    }
    return orElse();
  }
}

abstract class _NavigateToIndex implements RootNavigationEvent {
  const factory _NavigateToIndex(final int index) = _$_NavigateToIndex;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_NavigateToIndexCopyWith<_$_NavigateToIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RootNavigationState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootNavigationStateCopyWith<RootNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootNavigationStateCopyWith<$Res> {
  factory $RootNavigationStateCopyWith(
          RootNavigationState value, $Res Function(RootNavigationState) then) =
      _$RootNavigationStateCopyWithImpl<$Res, RootNavigationState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$RootNavigationStateCopyWithImpl<$Res, $Val extends RootNavigationState>
    implements $RootNavigationStateCopyWith<$Res> {
  _$RootNavigationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_RootNavigationStateCopyWith<$Res>
    implements $RootNavigationStateCopyWith<$Res> {
  factory _$$_RootNavigationStateCopyWith(_$_RootNavigationState value,
          $Res Function(_$_RootNavigationState) then) =
      __$$_RootNavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_RootNavigationStateCopyWithImpl<$Res>
    extends _$RootNavigationStateCopyWithImpl<$Res, _$_RootNavigationState>
    implements _$$_RootNavigationStateCopyWith<$Res> {
  __$$_RootNavigationStateCopyWithImpl(_$_RootNavigationState _value,
      $Res Function(_$_RootNavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_RootNavigationState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RootNavigationState extends _RootNavigationState {
  _$_RootNavigationState({this.index = 0}) : super._();

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'RootNavigationState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootNavigationState &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RootNavigationStateCopyWith<_$_RootNavigationState> get copyWith =>
      __$$_RootNavigationStateCopyWithImpl<_$_RootNavigationState>(
          this, _$identity);
}

abstract class _RootNavigationState extends RootNavigationState {
  factory _RootNavigationState({final int index}) = _$_RootNavigationState;
  _RootNavigationState._() : super._();

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_RootNavigationStateCopyWith<_$_RootNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
