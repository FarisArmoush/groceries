// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_list_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateListImageEvent {
  String get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String image) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String image)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String image)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateListImageEventCopyWith<UpdateListImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateListImageEventCopyWith<$Res> {
  factory $UpdateListImageEventCopyWith(UpdateListImageEvent value,
          $Res Function(UpdateListImageEvent) then) =
      _$UpdateListImageEventCopyWithImpl<$Res, UpdateListImageEvent>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$UpdateListImageEventCopyWithImpl<$Res,
        $Val extends UpdateListImageEvent>
    implements $UpdateListImageEventCopyWith<$Res> {
  _$UpdateListImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res>
    implements $UpdateListImageEventCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$UpdateListImageEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$UpdateImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'UpdateListImageEvent.update(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String image) update,
  }) {
    return update(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String image)? update,
  }) {
    return update?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String image)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements UpdateListImageEvent {
  const factory _Update({required final String image}) = _$UpdateImpl;

  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateListImageState {
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateListImageStateCopyWith<UpdateListImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateListImageStateCopyWith<$Res> {
  factory $UpdateListImageStateCopyWith(UpdateListImageState value,
          $Res Function(UpdateListImageState) then) =
      _$UpdateListImageStateCopyWithImpl<$Res, UpdateListImageState>;
  @useResult
  $Res call({BlocStatus status});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UpdateListImageStateCopyWithImpl<$Res,
        $Val extends UpdateListImageState>
    implements $UpdateListImageStateCopyWith<$Res> {
  _$UpdateListImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStatusCopyWith<$Res> get status {
    return $BlocStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateListImageStateImplCopyWith<$Res>
    implements $UpdateListImageStateCopyWith<$Res> {
  factory _$$UpdateListImageStateImplCopyWith(_$UpdateListImageStateImpl value,
          $Res Function(_$UpdateListImageStateImpl) then) =
      __$$UpdateListImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UpdateListImageStateImplCopyWithImpl<$Res>
    extends _$UpdateListImageStateCopyWithImpl<$Res, _$UpdateListImageStateImpl>
    implements _$$UpdateListImageStateImplCopyWith<$Res> {
  __$$UpdateListImageStateImplCopyWithImpl(_$UpdateListImageStateImpl _value,
      $Res Function(_$UpdateListImageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateListImageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$UpdateListImageStateImpl extends _UpdateListImageState {
  const _$UpdateListImageStateImpl({this.status = const BlocStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'UpdateListImageState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListImageStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListImageStateImplCopyWith<_$UpdateListImageStateImpl>
      get copyWith =>
          __$$UpdateListImageStateImplCopyWithImpl<_$UpdateListImageStateImpl>(
              this, _$identity);
}

abstract class _UpdateListImageState extends UpdateListImageState {
  const factory _UpdateListImageState({final BlocStatus status}) =
      _$UpdateListImageStateImpl;
  const _UpdateListImageState._() : super._();

  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$UpdateListImageStateImplCopyWith<_$UpdateListImageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
