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
abstract class _$$LoadGroceryListsImplCopyWith<$Res> {
  factory _$$LoadGroceryListsImplCopyWith(_$LoadGroceryListsImpl value,
          $Res Function(_$LoadGroceryListsImpl) then) =
      __$$LoadGroceryListsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadGroceryListsImplCopyWithImpl<$Res>
    extends _$GroceryListsEventCopyWithImpl<$Res, _$LoadGroceryListsImpl>
    implements _$$LoadGroceryListsImplCopyWith<$Res> {
  __$$LoadGroceryListsImplCopyWithImpl(_$LoadGroceryListsImpl _value,
      $Res Function(_$LoadGroceryListsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadGroceryListsImpl implements _LoadGroceryLists {
  const _$LoadGroceryListsImpl();

  @override
  String toString() {
    return 'GroceryListsEvent.loadGroceryLists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadGroceryListsImpl);
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
  const factory _LoadGroceryLists() = _$LoadGroceryListsImpl;
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
abstract class _$$GroceryListsStateImplCopyWith<$Res>
    implements $GroceryListsStateCopyWith<$Res> {
  factory _$$GroceryListsStateImplCopyWith(_$GroceryListsStateImpl value,
          $Res Function(_$GroceryListsStateImpl) then) =
      __$$GroceryListsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<GroceryListModel> groceryLists});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$GroceryListsStateImplCopyWithImpl<$Res>
    extends _$GroceryListsStateCopyWithImpl<$Res, _$GroceryListsStateImpl>
    implements _$$GroceryListsStateImplCopyWith<$Res> {
  __$$GroceryListsStateImplCopyWithImpl(_$GroceryListsStateImpl _value,
      $Res Function(_$GroceryListsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? groceryLists = null,
  }) {
    return _then(_$GroceryListsStateImpl(
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

class _$GroceryListsStateImpl extends _GroceryListsState {
  const _$GroceryListsStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryListsStateImpl &&
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
  _$$GroceryListsStateImplCopyWith<_$GroceryListsStateImpl> get copyWith =>
      __$$GroceryListsStateImplCopyWithImpl<_$GroceryListsStateImpl>(
          this, _$identity);
}

abstract class _GroceryListsState extends GroceryListsState {
  const factory _GroceryListsState(
      {final BlocStatus status,
      final List<GroceryListModel> groceryLists}) = _$GroceryListsStateImpl;
  const _GroceryListsState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<GroceryListModel> get groceryLists;
  @override
  @JsonKey(ignore: true)
  _$$GroceryListsStateImplCopyWith<_$GroceryListsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
