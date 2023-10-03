// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_lists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroceryListsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroceryLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroceryLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroceryLists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGroceryLists value) loadGroceryLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGroceryLists value)? loadGroceryLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGroceryLists value)? loadGroceryLists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryListsEventCopyWith<$Res> {
  factory $GroceryListsEventCopyWith(
          GroceryListsEvent value, $Res Function(GroceryListsEvent) then) =
      _$GroceryListsEventCopyWithImpl<$Res, GroceryListsEvent>;
}

/// @nodoc
class _$GroceryListsEventCopyWithImpl<$Res, $Val extends GroceryListsEvent>
    implements $GroceryListsEventCopyWith<$Res> {
  _$GroceryListsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadGroceryListsCopyWith<$Res> {
  factory _$$_LoadGroceryListsCopyWith(
          _$_LoadGroceryLists value, $Res Function(_$_LoadGroceryLists) then) =
      __$$_LoadGroceryListsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadGroceryListsCopyWithImpl<$Res>
    extends _$GroceryListsEventCopyWithImpl<$Res, _$_LoadGroceryLists>
    implements _$$_LoadGroceryListsCopyWith<$Res> {
  __$$_LoadGroceryListsCopyWithImpl(
      _$_LoadGroceryLists _value, $Res Function(_$_LoadGroceryLists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadGroceryLists implements _LoadGroceryLists {
  const _$_LoadGroceryLists();

  @override
  String toString() {
    return 'GroceryListsEvent.loadGroceryLists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadGroceryLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroceryLists,
  }) {
    return loadGroceryLists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroceryLists,
  }) {
    return loadGroceryLists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroceryLists,
    required TResult orElse(),
  }) {
    if (loadGroceryLists != null) {
      return loadGroceryLists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadGroceryLists value) loadGroceryLists,
  }) {
    return loadGroceryLists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadGroceryLists value)? loadGroceryLists,
  }) {
    return loadGroceryLists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadGroceryLists value)? loadGroceryLists,
    required TResult orElse(),
  }) {
    if (loadGroceryLists != null) {
      return loadGroceryLists(this);
    }
    return orElse();
  }
}

abstract class _LoadGroceryLists implements GroceryListsEvent {
  const factory _LoadGroceryLists() = _$_LoadGroceryLists;
}

/// @nodoc
mixin _$GroceryListsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<GroceryListModel> get groceryLists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroceryListsStateCopyWith<GroceryListsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryListsStateCopyWith<$Res> {
  factory $GroceryListsStateCopyWith(
          GroceryListsState value, $Res Function(GroceryListsState) then) =
      _$GroceryListsStateCopyWithImpl<$Res, GroceryListsState>;
  @useResult
  $Res call({BlocStatus status, List<GroceryListModel> groceryLists});

  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$GroceryListsStateCopyWithImpl<$Res, $Val extends GroceryListsState>
    implements $GroceryListsStateCopyWith<$Res> {
  _$GroceryListsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? groceryLists = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      groceryLists: null == groceryLists
          ? _value.groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as List<GroceryListModel>,
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
abstract class _$$_GroceryListsStateCopyWith<$Res>
    implements $GroceryListsStateCopyWith<$Res> {
  factory _$$_GroceryListsStateCopyWith(_$_GroceryListsState value,
          $Res Function(_$_GroceryListsState) then) =
      __$$_GroceryListsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<GroceryListModel> groceryLists});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_GroceryListsStateCopyWithImpl<$Res>
    extends _$GroceryListsStateCopyWithImpl<$Res, _$_GroceryListsState>
    implements _$$_GroceryListsStateCopyWith<$Res> {
  __$$_GroceryListsStateCopyWithImpl(
      _$_GroceryListsState _value, $Res Function(_$_GroceryListsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? groceryLists = null,
  }) {
    return _then(_$_GroceryListsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      groceryLists: null == groceryLists
          ? _value._groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as List<GroceryListModel>,
    ));
  }
}

/// @nodoc

class _$_GroceryListsState extends _GroceryListsState {
  const _$_GroceryListsState(
      {this.status = const BlocStatus.initial(),
      final List<GroceryListModel> groceryLists = const <GroceryListModel>[]})
      : _groceryLists = groceryLists,
        super._();

  @override
  @JsonKey()
  final BlocStatus status;
  final List<GroceryListModel> _groceryLists;
  @override
  @JsonKey()
  List<GroceryListModel> get groceryLists {
    if (_groceryLists is EqualUnmodifiableListView) return _groceryLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groceryLists);
  }

  @override
  String toString() {
    return 'GroceryListsState(status: $status, groceryLists: $groceryLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroceryListsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._groceryLists, _groceryLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_groceryLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroceryListsStateCopyWith<_$_GroceryListsState> get copyWith =>
      __$$_GroceryListsStateCopyWithImpl<_$_GroceryListsState>(
          this, _$identity);
}

abstract class _GroceryListsState extends GroceryListsState {
  const factory _GroceryListsState(
      {final BlocStatus status,
      final List<GroceryListModel> groceryLists}) = _$_GroceryListsState;
  const _GroceryListsState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<GroceryListModel> get groceryLists;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryListsStateCopyWith<_$_GroceryListsState> get copyWith =>
      throw _privateConstructorUsedError;
}
