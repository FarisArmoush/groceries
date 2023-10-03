// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateListEvent {
  GroceryListModel get groceryListModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroceryListModel groceryListModel) createList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroceryListModel groceryListModel)? createList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroceryListModel groceryListModel)? createList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateList value) createList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateList value)? createList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateList value)? createList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateListEventCopyWith<CreateListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateListEventCopyWith<$Res> {
  factory $CreateListEventCopyWith(
          CreateListEvent value, $Res Function(CreateListEvent) then) =
      _$CreateListEventCopyWithImpl<$Res, CreateListEvent>;
  @useResult
  $Res call({GroceryListModel groceryListModel});

  $GroceryListModelCopyWith<$Res> get groceryListModel;
}

/// @nodoc
class _$CreateListEventCopyWithImpl<$Res, $Val extends CreateListEvent>
    implements $CreateListEventCopyWith<$Res> {
  _$CreateListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListModel = null,
  }) {
    return _then(_value.copyWith(
      groceryListModel: null == groceryListModel
          ? _value.groceryListModel
          : groceryListModel // ignore: cast_nullable_to_non_nullable
              as GroceryListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroceryListModelCopyWith<$Res> get groceryListModel {
    return $GroceryListModelCopyWith<$Res>(_value.groceryListModel, (value) {
      return _then(_value.copyWith(groceryListModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateListCopyWith<$Res>
    implements $CreateListEventCopyWith<$Res> {
  factory _$$_CreateListCopyWith(
          _$_CreateList value, $Res Function(_$_CreateList) then) =
      __$$_CreateListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroceryListModel groceryListModel});

  @override
  $GroceryListModelCopyWith<$Res> get groceryListModel;
}

/// @nodoc
class __$$_CreateListCopyWithImpl<$Res>
    extends _$CreateListEventCopyWithImpl<$Res, _$_CreateList>
    implements _$$_CreateListCopyWith<$Res> {
  __$$_CreateListCopyWithImpl(
      _$_CreateList _value, $Res Function(_$_CreateList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListModel = null,
  }) {
    return _then(_$_CreateList(
      groceryListModel: null == groceryListModel
          ? _value.groceryListModel
          : groceryListModel // ignore: cast_nullable_to_non_nullable
              as GroceryListModel,
    ));
  }
}

/// @nodoc

class _$_CreateList implements _CreateList {
  const _$_CreateList({required this.groceryListModel});

  @override
  final GroceryListModel groceryListModel;

  @override
  String toString() {
    return 'CreateListEvent.createList(groceryListModel: $groceryListModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateList &&
            (identical(other.groceryListModel, groceryListModel) ||
                other.groceryListModel == groceryListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateListCopyWith<_$_CreateList> get copyWith =>
      __$$_CreateListCopyWithImpl<_$_CreateList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroceryListModel groceryListModel) createList,
  }) {
    return createList(groceryListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroceryListModel groceryListModel)? createList,
  }) {
    return createList?.call(groceryListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroceryListModel groceryListModel)? createList,
    required TResult orElse(),
  }) {
    if (createList != null) {
      return createList(groceryListModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateList value) createList,
  }) {
    return createList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateList value)? createList,
  }) {
    return createList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateList value)? createList,
    required TResult orElse(),
  }) {
    if (createList != null) {
      return createList(this);
    }
    return orElse();
  }
}

abstract class _CreateList implements CreateListEvent {
  const factory _CreateList(
      {required final GroceryListModel groceryListModel}) = _$_CreateList;

  @override
  GroceryListModel get groceryListModel;
  @override
  @JsonKey(ignore: true)
  _$$_CreateListCopyWith<_$_CreateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateListState {
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateListStateCopyWith<CreateListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateListStateCopyWith<$Res> {
  factory $CreateListStateCopyWith(
          CreateListState value, $Res Function(CreateListState) then) =
      _$CreateListStateCopyWithImpl<$Res, CreateListState>;
  @useResult
  $Res call({BlocStatus status});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CreateListStateCopyWithImpl<$Res, $Val extends CreateListState>
    implements $CreateListStateCopyWith<$Res> {
  _$CreateListStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateListStateCopyWith<$Res>
    implements $CreateListStateCopyWith<$Res> {
  factory _$$_CreateListStateCopyWith(
          _$_CreateListState value, $Res Function(_$_CreateListState) then) =
      __$$_CreateListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_CreateListStateCopyWithImpl<$Res>
    extends _$CreateListStateCopyWithImpl<$Res, _$_CreateListState>
    implements _$$_CreateListStateCopyWith<$Res> {
  __$$_CreateListStateCopyWithImpl(
      _$_CreateListState _value, $Res Function(_$_CreateListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_CreateListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$_CreateListState implements _CreateListState {
  const _$_CreateListState({this.status = const BlocStatus.initial()});

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'CreateListState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateListState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateListStateCopyWith<_$_CreateListState> get copyWith =>
      __$$_CreateListStateCopyWithImpl<_$_CreateListState>(this, _$identity);
}

abstract class _CreateListState implements CreateListState {
  const factory _CreateListState({final BlocStatus status}) =
      _$_CreateListState;

  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_CreateListStateCopyWith<_$_CreateListState> get copyWith =>
      throw _privateConstructorUsedError;
}
