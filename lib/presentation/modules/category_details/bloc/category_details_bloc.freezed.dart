// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parentCategoryId) getSubCategories,
    required TResult Function(String? categoryId) getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parentCategoryId)? getSubCategories,
    TResult? Function(String? categoryId)? getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parentCategoryId)? getSubCategories,
    TResult Function(String? categoryId)? getItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetItems value) getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetItems value)? getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetItems value)? getItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailsEventCopyWith<$Res> {
  factory $CategoryDetailsEventCopyWith(CategoryDetailsEvent value,
          $Res Function(CategoryDetailsEvent) then) =
      _$CategoryDetailsEventCopyWithImpl<$Res, CategoryDetailsEvent>;
}

/// @nodoc
class _$CategoryDetailsEventCopyWithImpl<$Res,
        $Val extends CategoryDetailsEvent>
    implements $CategoryDetailsEventCopyWith<$Res> {
  _$CategoryDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSubCategoriesImplCopyWith<$Res> {
  factory _$$GetSubCategoriesImplCopyWith(_$GetSubCategoriesImpl value,
          $Res Function(_$GetSubCategoriesImpl) then) =
      __$$GetSubCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? parentCategoryId});
}

/// @nodoc
class __$$GetSubCategoriesImplCopyWithImpl<$Res>
    extends _$CategoryDetailsEventCopyWithImpl<$Res, _$GetSubCategoriesImpl>
    implements _$$GetSubCategoriesImplCopyWith<$Res> {
  __$$GetSubCategoriesImplCopyWithImpl(_$GetSubCategoriesImpl _value,
      $Res Function(_$GetSubCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentCategoryId = freezed,
  }) {
    return _then(_$GetSubCategoriesImpl(
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesImpl implements _GetSubCategories {
  const _$GetSubCategoriesImpl({required this.parentCategoryId});

  @override
  final String? parentCategoryId;

  @override
  String toString() {
    return 'CategoryDetailsEvent.getSubCategories(parentCategoryId: $parentCategoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesImpl &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesImplCopyWith<_$GetSubCategoriesImpl> get copyWith =>
      __$$GetSubCategoriesImplCopyWithImpl<_$GetSubCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parentCategoryId) getSubCategories,
    required TResult Function(String? categoryId) getItems,
  }) {
    return getSubCategories(parentCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parentCategoryId)? getSubCategories,
    TResult? Function(String? categoryId)? getItems,
  }) {
    return getSubCategories?.call(parentCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parentCategoryId)? getSubCategories,
    TResult Function(String? categoryId)? getItems,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(parentCategoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetItems value) getItems,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetItems value)? getItems,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetItems value)? getItems,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class _GetSubCategories implements CategoryDetailsEvent {
  const factory _GetSubCategories({required final String? parentCategoryId}) =
      _$GetSubCategoriesImpl;

  String? get parentCategoryId;
  @JsonKey(ignore: true)
  _$$GetSubCategoriesImplCopyWith<_$GetSubCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetItemsImplCopyWith<$Res> {
  factory _$$GetItemsImplCopyWith(
          _$GetItemsImpl value, $Res Function(_$GetItemsImpl) then) =
      __$$GetItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryId});
}

/// @nodoc
class __$$GetItemsImplCopyWithImpl<$Res>
    extends _$CategoryDetailsEventCopyWithImpl<$Res, _$GetItemsImpl>
    implements _$$GetItemsImplCopyWith<$Res> {
  __$$GetItemsImplCopyWithImpl(
      _$GetItemsImpl _value, $Res Function(_$GetItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$GetItemsImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetItemsImpl implements _GetItems {
  const _$GetItemsImpl({required this.categoryId});

  @override
  final String? categoryId;

  @override
  String toString() {
    return 'CategoryDetailsEvent.getItems(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItemsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItemsImplCopyWith<_$GetItemsImpl> get copyWith =>
      __$$GetItemsImplCopyWithImpl<_$GetItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parentCategoryId) getSubCategories,
    required TResult Function(String? categoryId) getItems,
  }) {
    return getItems(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parentCategoryId)? getSubCategories,
    TResult? Function(String? categoryId)? getItems,
  }) {
    return getItems?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parentCategoryId)? getSubCategories,
    TResult Function(String? categoryId)? getItems,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetItems value) getItems,
  }) {
    return getItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetItems value)? getItems,
  }) {
    return getItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetItems value)? getItems,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems(this);
    }
    return orElse();
  }
}

abstract class _GetItems implements CategoryDetailsEvent {
  const factory _GetItems({required final String? categoryId}) = _$GetItemsImpl;

  String? get categoryId;
  @JsonKey(ignore: true)
  _$$GetItemsImplCopyWith<_$GetItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryDetailsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<GroceryModel> get groceries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryDetailsStateCopyWith<CategoryDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailsStateCopyWith<$Res> {
  factory $CategoryDetailsStateCopyWith(CategoryDetailsState value,
          $Res Function(CategoryDetailsState) then) =
      _$CategoryDetailsStateCopyWithImpl<$Res, CategoryDetailsState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<CategoryModel> categories,
      List<GroceryModel> groceries});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CategoryDetailsStateCopyWithImpl<$Res,
        $Val extends CategoryDetailsState>
    implements $CategoryDetailsStateCopyWith<$Res> {
  _$CategoryDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? groceries = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      groceries: null == groceries
          ? _value.groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel>,
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
abstract class _$$CategoryDetailsStateImplCopyWith<$Res>
    implements $CategoryDetailsStateCopyWith<$Res> {
  factory _$$CategoryDetailsStateImplCopyWith(_$CategoryDetailsStateImpl value,
          $Res Function(_$CategoryDetailsStateImpl) then) =
      __$$CategoryDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<CategoryModel> categories,
      List<GroceryModel> groceries});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$CategoryDetailsStateImplCopyWithImpl<$Res>
    extends _$CategoryDetailsStateCopyWithImpl<$Res, _$CategoryDetailsStateImpl>
    implements _$$CategoryDetailsStateImplCopyWith<$Res> {
  __$$CategoryDetailsStateImplCopyWithImpl(_$CategoryDetailsStateImpl _value,
      $Res Function(_$CategoryDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? groceries = null,
  }) {
    return _then(_$CategoryDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      groceries: null == groceries
          ? _value._groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel>,
    ));
  }
}

/// @nodoc

class _$CategoryDetailsStateImpl extends _CategoryDetailsState {
  const _$CategoryDetailsStateImpl(
      {this.status = const BlocStatus.initial(),
      final List<CategoryModel> categories = const <CategoryModel>[],
      final List<GroceryModel> groceries = const <GroceryModel>[]})
      : _categories = categories,
        _groceries = groceries,
        super._();

  @override
  @JsonKey()
  final BlocStatus status;
  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<GroceryModel> _groceries;
  @override
  @JsonKey()
  List<GroceryModel> get groceries {
    if (_groceries is EqualUnmodifiableListView) return _groceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groceries);
  }

  @override
  String toString() {
    return 'CategoryDetailsState(status: $status, categories: $categories, groceries: $groceries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._groceries, _groceries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_groceries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDetailsStateImplCopyWith<_$CategoryDetailsStateImpl>
      get copyWith =>
          __$$CategoryDetailsStateImplCopyWithImpl<_$CategoryDetailsStateImpl>(
              this, _$identity);
}

abstract class _CategoryDetailsState extends CategoryDetailsState {
  const factory _CategoryDetailsState(
      {final BlocStatus status,
      final List<CategoryModel> categories,
      final List<GroceryModel> groceries}) = _$CategoryDetailsStateImpl;
  const _CategoryDetailsState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<CategoryModel> get categories;
  @override
  List<GroceryModel> get groceries;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDetailsStateImplCopyWith<_$CategoryDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
