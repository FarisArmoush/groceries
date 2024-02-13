// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMyRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMyRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMyRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMyRecipes value) loadMyRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMyRecipes value)? loadMyRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMyRecipes value)? loadMyRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesEventCopyWith<$Res> {
  factory $RecipesEventCopyWith(
          RecipesEvent value, $Res Function(RecipesEvent) then) =
      _$RecipesEventCopyWithImpl<$Res, RecipesEvent>;
}

/// @nodoc
class _$RecipesEventCopyWithImpl<$Res, $Val extends RecipesEvent>
    implements $RecipesEventCopyWith<$Res> {
  _$RecipesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMyRecipesImplCopyWith<$Res> {
  factory _$$LoadMyRecipesImplCopyWith(
          _$LoadMyRecipesImpl value, $Res Function(_$LoadMyRecipesImpl) then) =
      __$$LoadMyRecipesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMyRecipesImplCopyWithImpl<$Res>
    extends _$RecipesEventCopyWithImpl<$Res, _$LoadMyRecipesImpl>
    implements _$$LoadMyRecipesImplCopyWith<$Res> {
  __$$LoadMyRecipesImplCopyWithImpl(
      _$LoadMyRecipesImpl _value, $Res Function(_$LoadMyRecipesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMyRecipesImpl implements _LoadMyRecipes {
  const _$LoadMyRecipesImpl();

  @override
  String toString() {
    return 'RecipesEvent.loadMyRecipes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMyRecipesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMyRecipes,
  }) {
    return loadMyRecipes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMyRecipes,
  }) {
    return loadMyRecipes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMyRecipes,
    required TResult orElse(),
  }) {
    if (loadMyRecipes != null) {
      return loadMyRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMyRecipes value) loadMyRecipes,
  }) {
    return loadMyRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMyRecipes value)? loadMyRecipes,
  }) {
    return loadMyRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMyRecipes value)? loadMyRecipes,
    required TResult orElse(),
  }) {
    if (loadMyRecipes != null) {
      return loadMyRecipes(this);
    }
    return orElse();
  }
}

abstract class _LoadMyRecipes implements RecipesEvent {
  const factory _LoadMyRecipes() = _$LoadMyRecipesImpl;
}

/// @nodoc
mixin _$RecipesState {
  List<RecipeModel> get recipes => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipesStateCopyWith<RecipesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesStateCopyWith<$Res> {
  factory $RecipesStateCopyWith(
          RecipesState value, $Res Function(RecipesState) then) =
      _$RecipesStateCopyWithImpl<$Res, RecipesState>;
  @useResult
  $Res call({List<RecipeModel> recipes, BlocStatus status});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$RecipesStateCopyWithImpl<$Res, $Val extends RecipesState>
    implements $RecipesStateCopyWith<$Res> {
  _$RecipesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
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
abstract class _$$RecipesStateImplCopyWith<$Res>
    implements $RecipesStateCopyWith<$Res> {
  factory _$$RecipesStateImplCopyWith(
          _$RecipesStateImpl value, $Res Function(_$RecipesStateImpl) then) =
      __$$RecipesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecipeModel> recipes, BlocStatus status});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$RecipesStateImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesStateImpl>
    implements _$$RecipesStateImplCopyWith<$Res> {
  __$$RecipesStateImplCopyWithImpl(
      _$RecipesStateImpl _value, $Res Function(_$RecipesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? status = null,
  }) {
    return _then(_$RecipesStateImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$RecipesStateImpl extends _RecipesState {
  const _$RecipesStateImpl(
      {final List<RecipeModel> recipes = const <RecipeModel>[],
      this.status = const BlocStatus.initial()})
      : _recipes = recipes,
        super._();

  final List<RecipeModel> _recipes;
  @override
  @JsonKey()
  List<RecipeModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'RecipesState(recipes: $recipes, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipes), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesStateImplCopyWith<_$RecipesStateImpl> get copyWith =>
      __$$RecipesStateImplCopyWithImpl<_$RecipesStateImpl>(this, _$identity);
}

abstract class _RecipesState extends RecipesState {
  const factory _RecipesState(
      {final List<RecipeModel> recipes,
      final BlocStatus status}) = _$RecipesStateImpl;
  const _RecipesState._() : super._();

  @override
  List<RecipeModel> get recipes;
  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$RecipesStateImplCopyWith<_$RecipesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
