// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeDetailsEvent {
  String? get uid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String? uid) deleteRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String? uid)? deleteRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String? uid)? deleteRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailsEventCopyWith<RecipeDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsEventCopyWith<$Res> {
  factory $RecipeDetailsEventCopyWith(
          RecipeDetailsEvent value, $Res Function(RecipeDetailsEvent) then) =
      _$RecipeDetailsEventCopyWithImpl<$Res, RecipeDetailsEvent>;
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class _$RecipeDetailsEventCopyWithImpl<$Res, $Val extends RecipeDetailsEvent>
    implements $RecipeDetailsEventCopyWith<$Res> {
  _$RecipeDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDetailsImplCopyWith<$Res>
    implements $RecipeDetailsEventCopyWith<$Res> {
  factory _$$GetDetailsImplCopyWith(
          _$GetDetailsImpl value, $Res Function(_$GetDetailsImpl) then) =
      __$$GetDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class __$$GetDetailsImplCopyWithImpl<$Res>
    extends _$RecipeDetailsEventCopyWithImpl<$Res, _$GetDetailsImpl>
    implements _$$GetDetailsImplCopyWith<$Res> {
  __$$GetDetailsImplCopyWithImpl(
      _$GetDetailsImpl _value, $Res Function(_$GetDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$GetDetailsImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetDetailsImpl implements _GetDetails {
  const _$GetDetailsImpl({required this.uid});

  @override
  final String? uid;

  @override
  String toString() {
    return 'RecipeDetailsEvent.getDetails(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailsImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailsImplCopyWith<_$GetDetailsImpl> get copyWith =>
      __$$GetDetailsImplCopyWithImpl<_$GetDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String? uid) deleteRecipe,
  }) {
    return getDetails(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String? uid)? deleteRecipe,
  }) {
    return getDetails?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String? uid)? deleteRecipe,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements RecipeDetailsEvent {
  const factory _GetDetails({required final String? uid}) = _$GetDetailsImpl;

  @override
  String? get uid;
  @override
  @JsonKey(ignore: true)
  _$$GetDetailsImplCopyWith<_$GetDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRecipeImplCopyWith<$Res>
    implements $RecipeDetailsEventCopyWith<$Res> {
  factory _$$DeleteRecipeImplCopyWith(
          _$DeleteRecipeImpl value, $Res Function(_$DeleteRecipeImpl) then) =
      __$$DeleteRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class __$$DeleteRecipeImplCopyWithImpl<$Res>
    extends _$RecipeDetailsEventCopyWithImpl<$Res, _$DeleteRecipeImpl>
    implements _$$DeleteRecipeImplCopyWith<$Res> {
  __$$DeleteRecipeImplCopyWithImpl(
      _$DeleteRecipeImpl _value, $Res Function(_$DeleteRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$DeleteRecipeImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteRecipeImpl implements _DeleteRecipe {
  const _$DeleteRecipeImpl({required this.uid});

  @override
  final String? uid;

  @override
  String toString() {
    return 'RecipeDetailsEvent.deleteRecipe(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRecipeImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRecipeImplCopyWith<_$DeleteRecipeImpl> get copyWith =>
      __$$DeleteRecipeImplCopyWithImpl<_$DeleteRecipeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String? uid) deleteRecipe,
  }) {
    return deleteRecipe(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String? uid)? deleteRecipe,
  }) {
    return deleteRecipe?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String? uid)? deleteRecipe,
    required TResult orElse(),
  }) {
    if (deleteRecipe != null) {
      return deleteRecipe(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_DeleteRecipe value) deleteRecipe,
  }) {
    return deleteRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_DeleteRecipe value)? deleteRecipe,
  }) {
    return deleteRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_DeleteRecipe value)? deleteRecipe,
    required TResult orElse(),
  }) {
    if (deleteRecipe != null) {
      return deleteRecipe(this);
    }
    return orElse();
  }
}

abstract class _DeleteRecipe implements RecipeDetailsEvent {
  const factory _DeleteRecipe({required final String? uid}) =
      _$DeleteRecipeImpl;

  @override
  String? get uid;
  @override
  @JsonKey(ignore: true)
  _$$DeleteRecipeImplCopyWith<_$DeleteRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeDetailsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  BlocStatus get deleteStatus => throw _privateConstructorUsedError;
  RecipeDetailsModel? get recipe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailsStateCopyWith<RecipeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsStateCopyWith<$Res> {
  factory $RecipeDetailsStateCopyWith(
          RecipeDetailsState value, $Res Function(RecipeDetailsState) then) =
      _$RecipeDetailsStateCopyWithImpl<$Res, RecipeDetailsState>;
  @useResult
  $Res call(
      {BlocStatus status, BlocStatus deleteStatus, RecipeDetailsModel? recipe});

  $BlocStatusCopyWith<$Res> get status;
  $BlocStatusCopyWith<$Res> get deleteStatus;
  $RecipeDetailsModelCopyWith<$Res>? get recipe;
}

/// @nodoc
class _$RecipeDetailsStateCopyWithImpl<$Res, $Val extends RecipeDetailsState>
    implements $RecipeDetailsStateCopyWith<$Res> {
  _$RecipeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deleteStatus = null,
    Object? recipe = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      deleteStatus: null == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStatusCopyWith<$Res> get status {
    return $BlocStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStatusCopyWith<$Res> get deleteStatus {
    return $BlocStatusCopyWith<$Res>(_value.deleteStatus, (value) {
      return _then(_value.copyWith(deleteStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeDetailsModelCopyWith<$Res>? get recipe {
    if (_value.recipe == null) {
      return null;
    }

    return $RecipeDetailsModelCopyWith<$Res>(_value.recipe!, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeDetailsStateImplCopyWith<$Res>
    implements $RecipeDetailsStateCopyWith<$Res> {
  factory _$$RecipeDetailsStateImplCopyWith(_$RecipeDetailsStateImpl value,
          $Res Function(_$RecipeDetailsStateImpl) then) =
      __$$RecipeDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status, BlocStatus deleteStatus, RecipeDetailsModel? recipe});

  @override
  $BlocStatusCopyWith<$Res> get status;
  @override
  $BlocStatusCopyWith<$Res> get deleteStatus;
  @override
  $RecipeDetailsModelCopyWith<$Res>? get recipe;
}

/// @nodoc
class __$$RecipeDetailsStateImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res, _$RecipeDetailsStateImpl>
    implements _$$RecipeDetailsStateImplCopyWith<$Res> {
  __$$RecipeDetailsStateImplCopyWithImpl(_$RecipeDetailsStateImpl _value,
      $Res Function(_$RecipeDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deleteStatus = null,
    Object? recipe = freezed,
  }) {
    return _then(_$RecipeDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      deleteStatus: null == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeDetailsModel?,
    ));
  }
}

/// @nodoc

class _$RecipeDetailsStateImpl implements _RecipeDetailsState {
  const _$RecipeDetailsStateImpl(
      {this.status = const BlocStatus.initial(),
      this.deleteStatus = const BlocStatus.initial(),
      this.recipe});

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final BlocStatus deleteStatus;
  @override
  final RecipeDetailsModel? recipe;

  @override
  String toString() {
    return 'RecipeDetailsState(status: $status, deleteStatus: $deleteStatus, recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deleteStatus, deleteStatus) ||
                other.deleteStatus == deleteStatus) &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, deleteStatus, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailsStateImplCopyWith<_$RecipeDetailsStateImpl> get copyWith =>
      __$$RecipeDetailsStateImplCopyWithImpl<_$RecipeDetailsStateImpl>(
          this, _$identity);
}

abstract class _RecipeDetailsState implements RecipeDetailsState {
  const factory _RecipeDetailsState(
      {final BlocStatus status,
      final BlocStatus deleteStatus,
      final RecipeDetailsModel? recipe}) = _$RecipeDetailsStateImpl;

  @override
  BlocStatus get status;
  @override
  BlocStatus get deleteStatus;
  @override
  RecipeDetailsModel? get recipe;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailsStateImplCopyWith<_$RecipeDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
