// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRecipe value) createRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRecipe value)? createRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRecipe value)? createRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeEventCopyWith<$Res> {
  factory $CreateRecipeEventCopyWith(
          CreateRecipeEvent value, $Res Function(CreateRecipeEvent) then) =
      _$CreateRecipeEventCopyWithImpl<$Res, CreateRecipeEvent>;
}

/// @nodoc
class _$CreateRecipeEventCopyWithImpl<$Res, $Val extends CreateRecipeEvent>
    implements $CreateRecipeEventCopyWith<$Res> {
  _$CreateRecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateRecipeImplCopyWith<$Res> {
  factory _$$CreateRecipeImplCopyWith(
          _$CreateRecipeImpl value, $Res Function(_$CreateRecipeImpl) then) =
      __$$CreateRecipeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRecipeImplCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$CreateRecipeImpl>
    implements _$$CreateRecipeImplCopyWith<$Res> {
  __$$CreateRecipeImplCopyWithImpl(
      _$CreateRecipeImpl _value, $Res Function(_$CreateRecipeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRecipeImpl implements _CreateRecipe {
  const _$CreateRecipeImpl();

  @override
  String toString() {
    return 'CreateRecipeEvent.createRecipe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateRecipeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRecipe,
  }) {
    return createRecipe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createRecipe,
  }) {
    return createRecipe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRecipe,
    required TResult orElse(),
  }) {
    if (createRecipe != null) {
      return createRecipe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRecipe value) createRecipe,
  }) {
    return createRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateRecipe value)? createRecipe,
  }) {
    return createRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRecipe value)? createRecipe,
    required TResult orElse(),
  }) {
    if (createRecipe != null) {
      return createRecipe(this);
    }
    return orElse();
  }
}

abstract class _CreateRecipe implements CreateRecipeEvent {
  const factory _CreateRecipe() = _$CreateRecipeImpl;
}

/// @nodoc
mixin _$CreateRecipeState {
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRecipeStateCopyWith<CreateRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeStateCopyWith<$Res> {
  factory $CreateRecipeStateCopyWith(
          CreateRecipeState value, $Res Function(CreateRecipeState) then) =
      _$CreateRecipeStateCopyWithImpl<$Res, CreateRecipeState>;
  @useResult
  $Res call({BlocStatus status});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CreateRecipeStateCopyWithImpl<$Res, $Val extends CreateRecipeState>
    implements $CreateRecipeStateCopyWith<$Res> {
  _$CreateRecipeStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateRecipeStateImplCopyWith<$Res>
    implements $CreateRecipeStateCopyWith<$Res> {
  factory _$$CreateRecipeStateImplCopyWith(_$CreateRecipeStateImpl value,
          $Res Function(_$CreateRecipeStateImpl) then) =
      __$$CreateRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$CreateRecipeStateImplCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$CreateRecipeStateImpl>
    implements _$$CreateRecipeStateImplCopyWith<$Res> {
  __$$CreateRecipeStateImplCopyWithImpl(_$CreateRecipeStateImpl _value,
      $Res Function(_$CreateRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CreateRecipeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$CreateRecipeStateImpl extends _CreateRecipeState {
  const _$CreateRecipeStateImpl({this.status = const BlocStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'CreateRecipeState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecipeStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRecipeStateImplCopyWith<_$CreateRecipeStateImpl> get copyWith =>
      __$$CreateRecipeStateImplCopyWithImpl<_$CreateRecipeStateImpl>(
          this, _$identity);
}

abstract class _CreateRecipeState extends CreateRecipeState {
  const factory _CreateRecipeState({final BlocStatus status}) =
      _$CreateRecipeStateImpl;
  const _CreateRecipeState._() : super._();

  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CreateRecipeStateImplCopyWith<_$CreateRecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
