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
    required TResult Function(GroceryModel groceryModel, String collectionPath)
        addItemToList,
    required TResult Function(String category) setActiveCategory,
    required TResult Function() getCategoryItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getParentCategories,
    TResult? Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult? Function(String category)? setActiveCategory,
    TResult? Function()? getCategoryItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getParentCategories,
    TResult Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult Function(String category)? setActiveCategory,
    TResult Function()? getCategoryItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParentCategories value) getParentCategories,
    required TResult Function(_AddItemToList value) addItemToList,
    required TResult Function(_SetActiveCategory value) setActiveCategory,
    required TResult Function(_GetCategoryItems value) getCategoryItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParentCategories value)? getParentCategories,
    TResult? Function(_AddItemToList value)? addItemToList,
    TResult? Function(_SetActiveCategory value)? setActiveCategory,
    TResult? Function(_GetCategoryItems value)? getCategoryItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParentCategories value)? getParentCategories,
    TResult Function(_AddItemToList value)? addItemToList,
    TResult Function(_SetActiveCategory value)? setActiveCategory,
    TResult Function(_GetCategoryItems value)? getCategoryItems,
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
abstract class _$$_GetParentCategoriesCopyWith<$Res> {
  factory _$$_GetParentCategoriesCopyWith(_$_GetParentCategories value,
          $Res Function(_$_GetParentCategories) then) =
      __$$_GetParentCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetParentCategoriesCopyWithImpl<$Res>
    extends _$AddItemsEventCopyWithImpl<$Res, _$_GetParentCategories>
    implements _$$_GetParentCategoriesCopyWith<$Res> {
  __$$_GetParentCategoriesCopyWithImpl(_$_GetParentCategories _value,
      $Res Function(_$_GetParentCategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetParentCategories implements _GetParentCategories {
  const _$_GetParentCategories();

  @override
  String toString() {
    return 'AddItemsEvent.getParentCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetParentCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getParentCategories,
    required TResult Function(GroceryModel groceryModel, String collectionPath)
        addItemToList,
    required TResult Function(String category) setActiveCategory,
    required TResult Function() getCategoryItems,
  }) {
    return getParentCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getParentCategories,
    TResult? Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult? Function(String category)? setActiveCategory,
    TResult? Function()? getCategoryItems,
  }) {
    return getParentCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getParentCategories,
    TResult Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult Function(String category)? setActiveCategory,
    TResult Function()? getCategoryItems,
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
    required TResult Function(_AddItemToList value) addItemToList,
    required TResult Function(_SetActiveCategory value) setActiveCategory,
    required TResult Function(_GetCategoryItems value) getCategoryItems,
  }) {
    return getParentCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParentCategories value)? getParentCategories,
    TResult? Function(_AddItemToList value)? addItemToList,
    TResult? Function(_SetActiveCategory value)? setActiveCategory,
    TResult? Function(_GetCategoryItems value)? getCategoryItems,
  }) {
    return getParentCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParentCategories value)? getParentCategories,
    TResult Function(_AddItemToList value)? addItemToList,
    TResult Function(_SetActiveCategory value)? setActiveCategory,
    TResult Function(_GetCategoryItems value)? getCategoryItems,
    required TResult orElse(),
  }) {
    if (getParentCategories != null) {
      return getParentCategories(this);
    }
    return orElse();
  }
}

abstract class _GetParentCategories implements AddItemsEvent {
  const factory _GetParentCategories() = _$_GetParentCategories;
}

/// @nodoc
abstract class _$$_AddItemToListCopyWith<$Res> {
  factory _$$_AddItemToListCopyWith(
          _$_AddItemToList value, $Res Function(_$_AddItemToList) then) =
      __$$_AddItemToListCopyWithImpl<$Res>;
  @useResult
  $Res call({GroceryModel groceryModel, String collectionPath});

  $GroceryModelCopyWith<$Res> get groceryModel;
}

/// @nodoc
class __$$_AddItemToListCopyWithImpl<$Res>
    extends _$AddItemsEventCopyWithImpl<$Res, _$_AddItemToList>
    implements _$$_AddItemToListCopyWith<$Res> {
  __$$_AddItemToListCopyWithImpl(
      _$_AddItemToList _value, $Res Function(_$_AddItemToList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryModel = null,
    Object? collectionPath = null,
  }) {
    return _then(_$_AddItemToList(
      groceryModel: null == groceryModel
          ? _value.groceryModel
          : groceryModel // ignore: cast_nullable_to_non_nullable
              as GroceryModel,
      collectionPath: null == collectionPath
          ? _value.collectionPath
          : collectionPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroceryModelCopyWith<$Res> get groceryModel {
    return $GroceryModelCopyWith<$Res>(_value.groceryModel, (value) {
      return _then(_value.copyWith(groceryModel: value));
    });
  }
}

/// @nodoc

class _$_AddItemToList implements _AddItemToList {
  const _$_AddItemToList(
      {required this.groceryModel, required this.collectionPath});

  @override
  final GroceryModel groceryModel;
  @override
  final String collectionPath;

  @override
  String toString() {
    return 'AddItemsEvent.addItemToList(groceryModel: $groceryModel, collectionPath: $collectionPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemToList &&
            (identical(other.groceryModel, groceryModel) ||
                other.groceryModel == groceryModel) &&
            (identical(other.collectionPath, collectionPath) ||
                other.collectionPath == collectionPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryModel, collectionPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddItemToListCopyWith<_$_AddItemToList> get copyWith =>
      __$$_AddItemToListCopyWithImpl<_$_AddItemToList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getParentCategories,
    required TResult Function(GroceryModel groceryModel, String collectionPath)
        addItemToList,
    required TResult Function(String category) setActiveCategory,
    required TResult Function() getCategoryItems,
  }) {
    return addItemToList(groceryModel, collectionPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getParentCategories,
    TResult? Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult? Function(String category)? setActiveCategory,
    TResult? Function()? getCategoryItems,
  }) {
    return addItemToList?.call(groceryModel, collectionPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getParentCategories,
    TResult Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult Function(String category)? setActiveCategory,
    TResult Function()? getCategoryItems,
    required TResult orElse(),
  }) {
    if (addItemToList != null) {
      return addItemToList(groceryModel, collectionPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParentCategories value) getParentCategories,
    required TResult Function(_AddItemToList value) addItemToList,
    required TResult Function(_SetActiveCategory value) setActiveCategory,
    required TResult Function(_GetCategoryItems value) getCategoryItems,
  }) {
    return addItemToList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParentCategories value)? getParentCategories,
    TResult? Function(_AddItemToList value)? addItemToList,
    TResult? Function(_SetActiveCategory value)? setActiveCategory,
    TResult? Function(_GetCategoryItems value)? getCategoryItems,
  }) {
    return addItemToList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParentCategories value)? getParentCategories,
    TResult Function(_AddItemToList value)? addItemToList,
    TResult Function(_SetActiveCategory value)? setActiveCategory,
    TResult Function(_GetCategoryItems value)? getCategoryItems,
    required TResult orElse(),
  }) {
    if (addItemToList != null) {
      return addItemToList(this);
    }
    return orElse();
  }
}

abstract class _AddItemToList implements AddItemsEvent {
  const factory _AddItemToList(
      {required final GroceryModel groceryModel,
      required final String collectionPath}) = _$_AddItemToList;

  GroceryModel get groceryModel;
  String get collectionPath;
  @JsonKey(ignore: true)
  _$$_AddItemToListCopyWith<_$_AddItemToList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetActiveCategoryCopyWith<$Res> {
  factory _$$_SetActiveCategoryCopyWith(_$_SetActiveCategory value,
          $Res Function(_$_SetActiveCategory) then) =
      __$$_SetActiveCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$_SetActiveCategoryCopyWithImpl<$Res>
    extends _$AddItemsEventCopyWithImpl<$Res, _$_SetActiveCategory>
    implements _$$_SetActiveCategoryCopyWith<$Res> {
  __$$_SetActiveCategoryCopyWithImpl(
      _$_SetActiveCategory _value, $Res Function(_$_SetActiveCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_SetActiveCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetActiveCategory implements _SetActiveCategory {
  const _$_SetActiveCategory(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'AddItemsEvent.setActiveCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetActiveCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetActiveCategoryCopyWith<_$_SetActiveCategory> get copyWith =>
      __$$_SetActiveCategoryCopyWithImpl<_$_SetActiveCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getParentCategories,
    required TResult Function(GroceryModel groceryModel, String collectionPath)
        addItemToList,
    required TResult Function(String category) setActiveCategory,
    required TResult Function() getCategoryItems,
  }) {
    return setActiveCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getParentCategories,
    TResult? Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult? Function(String category)? setActiveCategory,
    TResult? Function()? getCategoryItems,
  }) {
    return setActiveCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getParentCategories,
    TResult Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult Function(String category)? setActiveCategory,
    TResult Function()? getCategoryItems,
    required TResult orElse(),
  }) {
    if (setActiveCategory != null) {
      return setActiveCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParentCategories value) getParentCategories,
    required TResult Function(_AddItemToList value) addItemToList,
    required TResult Function(_SetActiveCategory value) setActiveCategory,
    required TResult Function(_GetCategoryItems value) getCategoryItems,
  }) {
    return setActiveCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParentCategories value)? getParentCategories,
    TResult? Function(_AddItemToList value)? addItemToList,
    TResult? Function(_SetActiveCategory value)? setActiveCategory,
    TResult? Function(_GetCategoryItems value)? getCategoryItems,
  }) {
    return setActiveCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParentCategories value)? getParentCategories,
    TResult Function(_AddItemToList value)? addItemToList,
    TResult Function(_SetActiveCategory value)? setActiveCategory,
    TResult Function(_GetCategoryItems value)? getCategoryItems,
    required TResult orElse(),
  }) {
    if (setActiveCategory != null) {
      return setActiveCategory(this);
    }
    return orElse();
  }
}

abstract class _SetActiveCategory implements AddItemsEvent {
  const factory _SetActiveCategory(final String category) =
      _$_SetActiveCategory;

  String get category;
  @JsonKey(ignore: true)
  _$$_SetActiveCategoryCopyWith<_$_SetActiveCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCategoryItemsCopyWith<$Res> {
  factory _$$_GetCategoryItemsCopyWith(
          _$_GetCategoryItems value, $Res Function(_$_GetCategoryItems) then) =
      __$$_GetCategoryItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCategoryItemsCopyWithImpl<$Res>
    extends _$AddItemsEventCopyWithImpl<$Res, _$_GetCategoryItems>
    implements _$$_GetCategoryItemsCopyWith<$Res> {
  __$$_GetCategoryItemsCopyWithImpl(
      _$_GetCategoryItems _value, $Res Function(_$_GetCategoryItems) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCategoryItems implements _GetCategoryItems {
  const _$_GetCategoryItems();

  @override
  String toString() {
    return 'AddItemsEvent.getCategoryItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCategoryItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getParentCategories,
    required TResult Function(GroceryModel groceryModel, String collectionPath)
        addItemToList,
    required TResult Function(String category) setActiveCategory,
    required TResult Function() getCategoryItems,
  }) {
    return getCategoryItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getParentCategories,
    TResult? Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult? Function(String category)? setActiveCategory,
    TResult? Function()? getCategoryItems,
  }) {
    return getCategoryItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getParentCategories,
    TResult Function(GroceryModel groceryModel, String collectionPath)?
        addItemToList,
    TResult Function(String category)? setActiveCategory,
    TResult Function()? getCategoryItems,
    required TResult orElse(),
  }) {
    if (getCategoryItems != null) {
      return getCategoryItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetParentCategories value) getParentCategories,
    required TResult Function(_AddItemToList value) addItemToList,
    required TResult Function(_SetActiveCategory value) setActiveCategory,
    required TResult Function(_GetCategoryItems value) getCategoryItems,
  }) {
    return getCategoryItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetParentCategories value)? getParentCategories,
    TResult? Function(_AddItemToList value)? addItemToList,
    TResult? Function(_SetActiveCategory value)? setActiveCategory,
    TResult? Function(_GetCategoryItems value)? getCategoryItems,
  }) {
    return getCategoryItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetParentCategories value)? getParentCategories,
    TResult Function(_AddItemToList value)? addItemToList,
    TResult Function(_SetActiveCategory value)? setActiveCategory,
    TResult Function(_GetCategoryItems value)? getCategoryItems,
    required TResult orElse(),
  }) {
    if (getCategoryItems != null) {
      return getCategoryItems(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryItems implements AddItemsEvent {
  const factory _GetCategoryItems() = _$_GetCategoryItems;
}

/// @nodoc
mixin _$AddItemsState {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<GroceryModel> get baseGroceries => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  BaseStatus get status => throw _privateConstructorUsedError;

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
  $Res call(
      {List<CategoryModel> categories,
      List<GroceryModel> baseGroceries,
      String selectedCategory,
      String error,
      BaseStatus status});

  $BaseStatusCopyWith<$Res> get status;
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
    Object? categories = null,
    Object? baseGroceries = null,
    Object? selectedCategory = null,
    Object? error = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      baseGroceries: null == baseGroceries
          ? _value.baseGroceries
          : baseGroceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<$Res> get status {
    return $BaseStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddItemsStateCopyWith<$Res>
    implements $AddItemsStateCopyWith<$Res> {
  factory _$$_AddItemsStateCopyWith(
          _$_AddItemsState value, $Res Function(_$_AddItemsState) then) =
      __$$_AddItemsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel> categories,
      List<GroceryModel> baseGroceries,
      String selectedCategory,
      String error,
      BaseStatus status});

  @override
  $BaseStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_AddItemsStateCopyWithImpl<$Res>
    extends _$AddItemsStateCopyWithImpl<$Res, _$_AddItemsState>
    implements _$$_AddItemsStateCopyWith<$Res> {
  __$$_AddItemsStateCopyWithImpl(
      _$_AddItemsState _value, $Res Function(_$_AddItemsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? baseGroceries = null,
    Object? selectedCategory = null,
    Object? error = null,
    Object? status = null,
  }) {
    return _then(_$_AddItemsState(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      baseGroceries: null == baseGroceries
          ? _value._baseGroceries
          : baseGroceries // ignore: cast_nullable_to_non_nullable
              as List<GroceryModel>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
    ));
  }
}

/// @nodoc

class _$_AddItemsState extends _AddItemsState {
  const _$_AddItemsState(
      {final List<CategoryModel> categories = const <CategoryModel>[],
      final List<GroceryModel> baseGroceries = const <GroceryModel>[],
      this.selectedCategory = 'All',
      this.error = 'Failed to get data. Try again later.',
      this.status = const BaseStatus.initial()})
      : _categories = categories,
        _baseGroceries = baseGroceries,
        super._();

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<GroceryModel> _baseGroceries;
  @override
  @JsonKey()
  List<GroceryModel> get baseGroceries {
    if (_baseGroceries is EqualUnmodifiableListView) return _baseGroceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_baseGroceries);
  }

  @override
  @JsonKey()
  final String selectedCategory;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final BaseStatus status;

  @override
  String toString() {
    return 'AddItemsState(categories: $categories, baseGroceries: $baseGroceries, selectedCategory: $selectedCategory, error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemsState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._baseGroceries, _baseGroceries) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_baseGroceries),
      selectedCategory,
      error,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddItemsStateCopyWith<_$_AddItemsState> get copyWith =>
      __$$_AddItemsStateCopyWithImpl<_$_AddItemsState>(this, _$identity);
}

abstract class _AddItemsState extends AddItemsState {
  const factory _AddItemsState(
      {final List<CategoryModel> categories,
      final List<GroceryModel> baseGroceries,
      final String selectedCategory,
      final String error,
      final BaseStatus status}) = _$_AddItemsState;
  const _AddItemsState._() : super._();

  @override
  List<CategoryModel> get categories;
  @override
  List<GroceryModel> get baseGroceries;
  @override
  String get selectedCategory;
  @override
  String get error;
  @override
  BaseStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AddItemsStateCopyWith<_$_AddItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}
