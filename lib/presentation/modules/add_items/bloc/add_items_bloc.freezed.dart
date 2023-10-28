// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getParentCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getParentCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getParentCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParentCategories value) getParentCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParentCategories value)? getParentCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParentCategories value)? getParentCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemsEventCopyWith<$Res> {
  factory $AddItemsEventCopyWith(
          AddItemsEvent value, $Res Function(AddItemsEvent) then) =
      _$AddItemsEventCopyWithImpl<$Res, AddItemsEvent>;
}

/// @nodoc
class _$AddItemsEventCopyWithImpl<$Res, $Val extends AddItemsEvent>
    implements $AddItemsEventCopyWith<$Res> {
  _$AddItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetParentCategoriesImplCopyWith<$Res> {
  factory _$$GetParentCategoriesImplCopyWith(_$GetParentCategoriesImpl value,
          $Res Function(_$GetParentCategoriesImpl) then) =
      __$$GetParentCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetParentCategoriesImplCopyWithImpl<$Res>
    extends _$AddItemsEventCopyWithImpl<$Res, _$GetParentCategoriesImpl>
    implements _$$GetParentCategoriesImplCopyWith<$Res> {
  __$$GetParentCategoriesImplCopyWithImpl(_$GetParentCategoriesImpl _value,
      $Res Function(_$GetParentCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetParentCategoriesImpl implements _GetParentCategories {
  const _$GetParentCategoriesImpl();

  @override
  String toString() {
    return 'AddItemsEvent.getParentCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetParentCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getParentCategories,
  }) {
    return getParentCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getParentCategories,
  }) {
    return getParentCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getParentCategories,
    required TResult orElse(),
  }) {
    if (getParentCategories != null) {
      return getParentCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParentCategories value) getParentCategories,
  }) {
    return getParentCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParentCategories value)? getParentCategories,
  }) {
    return getParentCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParentCategories value)? getParentCategories,
    required TResult orElse(),
  }) {
    if (getParentCategories != null) {
      return getParentCategories(this);
    }
    return orElse();
  }
}

abstract class _GetParentCategories implements AddItemsEvent {
  const factory _GetParentCategories() = _$GetParentCategoriesImpl;
}

/// @nodoc
mixin _$AddItemsState {
  List<CategoryModel> get parentCategories =>
      throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddItemsStateCopyWith<AddItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemsStateCopyWith<$Res> {
  factory $AddItemsStateCopyWith(
          AddItemsState value, $Res Function(AddItemsState) then) =
      _$AddItemsStateCopyWithImpl<$Res, AddItemsState>;
  @useResult
  $Res call({List<CategoryModel> parentCategories, BlocStatus status});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AddItemsStateCopyWithImpl<$Res, $Val extends AddItemsState>
    implements $AddItemsStateCopyWith<$Res> {
  _$AddItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCategories = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      parentCategories: null == parentCategories
          ? _value.parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
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
abstract class _$$AddItemsStateImplCopyWith<$Res>
    implements $AddItemsStateCopyWith<$Res> {
  factory _$$AddItemsStateImplCopyWith(
          _$AddItemsStateImpl value, $Res Function(_$AddItemsStateImpl) then) =
      __$$AddItemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel> parentCategories, BlocStatus status});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$AddItemsStateImplCopyWithImpl<$Res>
    extends _$AddItemsStateCopyWithImpl<$Res, _$AddItemsStateImpl>
    implements _$$AddItemsStateImplCopyWith<$Res> {
  __$$AddItemsStateImplCopyWithImpl(
      _$AddItemsStateImpl _value, $Res Function(_$AddItemsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCategories = null,
    Object? status = null,
  }) {
    return _then(_$AddItemsStateImpl(
      parentCategories: null == parentCategories
          ? _value._parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$AddItemsStateImpl extends _AddItemsState {
  const _$AddItemsStateImpl(
      {final List<CategoryModel> parentCategories = const <CategoryModel>[],
      this.status = const BlocStatus.initial()})
      : _parentCategories = parentCategories,
        super._();

  final List<CategoryModel> _parentCategories;
  @override
  @JsonKey()
  List<CategoryModel> get parentCategories {
    if (_parentCategories is EqualUnmodifiableListView)
      return _parentCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parentCategories);
  }

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'AddItemsState(parentCategories: $parentCategories, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._parentCategories, _parentCategories) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_parentCategories), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemsStateImplCopyWith<_$AddItemsStateImpl> get copyWith =>
      __$$AddItemsStateImplCopyWithImpl<_$AddItemsStateImpl>(this, _$identity);
}

abstract class _AddItemsState extends AddItemsState {
  const factory _AddItemsState(
      {final List<CategoryModel> parentCategories,
      final BlocStatus status}) = _$AddItemsStateImpl;
  const _AddItemsState._() : super._();

  @override
  List<CategoryModel> get parentCategories;
  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AddItemsStateImplCopyWith<_$AddItemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
