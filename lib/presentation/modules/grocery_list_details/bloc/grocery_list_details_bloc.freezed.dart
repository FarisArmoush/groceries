// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_list_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroceryListDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String itemUid) addItem,
    required TResult Function(String itemUid) removeItem,
    required TResult Function(String? uid) clear,
    required TResult Function() setToInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String itemUid)? addItem,
    TResult? Function(String itemUid)? removeItem,
    TResult? Function(String? uid)? clear,
    TResult? Function()? setToInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String itemUid)? addItem,
    TResult Function(String itemUid)? removeItem,
    TResult Function(String? uid)? clear,
    TResult Function()? setToInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SetToInitial value) setToInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_SetToInitial value)? setToInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_Clear value)? clear,
    TResult Function(_SetToInitial value)? setToInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryListDetailsEventCopyWith<$Res> {
  factory $GroceryListDetailsEventCopyWith(GroceryListDetailsEvent value,
          $Res Function(GroceryListDetailsEvent) then) =
      _$GroceryListDetailsEventCopyWithImpl<$Res, GroceryListDetailsEvent>;
}

/// @nodoc
class _$GroceryListDetailsEventCopyWithImpl<$Res,
        $Val extends GroceryListDetailsEvent>
    implements $GroceryListDetailsEventCopyWith<$Res> {
  _$GroceryListDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDetailsImplCopyWith<$Res> {
  factory _$$GetDetailsImplCopyWith(
          _$GetDetailsImpl value, $Res Function(_$GetDetailsImpl) then) =
      __$$GetDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class __$$GetDetailsImplCopyWithImpl<$Res>
    extends _$GroceryListDetailsEventCopyWithImpl<$Res, _$GetDetailsImpl>
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
    return 'GroceryListDetailsEvent.getDetails(uid: $uid)';
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
    required TResult Function(String itemUid) addItem,
    required TResult Function(String itemUid) removeItem,
    required TResult Function(String? uid) clear,
    required TResult Function() setToInitial,
  }) {
    return getDetails(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String itemUid)? addItem,
    TResult? Function(String itemUid)? removeItem,
    TResult? Function(String? uid)? clear,
    TResult? Function()? setToInitial,
  }) {
    return getDetails?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String itemUid)? addItem,
    TResult Function(String itemUid)? removeItem,
    TResult Function(String? uid)? clear,
    TResult Function()? setToInitial,
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
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SetToInitial value) setToInitial,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_SetToInitial value)? setToInitial,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_Clear value)? clear,
    TResult Function(_SetToInitial value)? setToInitial,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements GroceryListDetailsEvent {
  const factory _GetDetails({required final String? uid}) = _$GetDetailsImpl;

  String? get uid;
  @JsonKey(ignore: true)
  _$$GetDetailsImplCopyWith<_$GetDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemUid});
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$GroceryListDetailsEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemUid = null,
  }) {
    return _then(_$AddItemImpl(
      itemUid: null == itemUid
          ? _value.itemUid
          : itemUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl({required this.itemUid});

  @override
  final String itemUid;

  @override
  String toString() {
    return 'GroceryListDetailsEvent.addItem(itemUid: $itemUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.itemUid, itemUid) || other.itemUid == itemUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String itemUid) addItem,
    required TResult Function(String itemUid) removeItem,
    required TResult Function(String? uid) clear,
    required TResult Function() setToInitial,
  }) {
    return addItem(itemUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String itemUid)? addItem,
    TResult? Function(String itemUid)? removeItem,
    TResult? Function(String? uid)? clear,
    TResult? Function()? setToInitial,
  }) {
    return addItem?.call(itemUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String itemUid)? addItem,
    TResult Function(String itemUid)? removeItem,
    TResult Function(String? uid)? clear,
    TResult Function()? setToInitial,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(itemUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SetToInitial value) setToInitial,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_SetToInitial value)? setToInitial,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_Clear value)? clear,
    TResult Function(_SetToInitial value)? setToInitial,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements GroceryListDetailsEvent {
  const factory _AddItem({required final String itemUid}) = _$AddItemImpl;

  String get itemUid;
  @JsonKey(ignore: true)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemUid});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$GroceryListDetailsEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemUid = null,
  }) {
    return _then(_$RemoveItemImpl(
      itemUid: null == itemUid
          ? _value.itemUid
          : itemUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl implements _RemoveItem {
  const _$RemoveItemImpl({required this.itemUid});

  @override
  final String itemUid;

  @override
  String toString() {
    return 'GroceryListDetailsEvent.removeItem(itemUid: $itemUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.itemUid, itemUid) || other.itemUid == itemUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String itemUid) addItem,
    required TResult Function(String itemUid) removeItem,
    required TResult Function(String? uid) clear,
    required TResult Function() setToInitial,
  }) {
    return removeItem(itemUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String itemUid)? addItem,
    TResult? Function(String itemUid)? removeItem,
    TResult? Function(String? uid)? clear,
    TResult? Function()? setToInitial,
  }) {
    return removeItem?.call(itemUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String itemUid)? addItem,
    TResult Function(String itemUid)? removeItem,
    TResult Function(String? uid)? clear,
    TResult Function()? setToInitial,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(itemUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SetToInitial value) setToInitial,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_SetToInitial value)? setToInitial,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_Clear value)? clear,
    TResult Function(_SetToInitial value)? setToInitial,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements GroceryListDetailsEvent {
  const factory _RemoveItem({required final String itemUid}) = _$RemoveItemImpl;

  String get itemUid;
  @JsonKey(ignore: true)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$GroceryListDetailsEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$ClearImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl({required this.uid});

  @override
  final String? uid;

  @override
  String toString() {
    return 'GroceryListDetailsEvent.clear(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearImplCopyWith<_$ClearImpl> get copyWith =>
      __$$ClearImplCopyWithImpl<_$ClearImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String itemUid) addItem,
    required TResult Function(String itemUid) removeItem,
    required TResult Function(String? uid) clear,
    required TResult Function() setToInitial,
  }) {
    return clear(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String itemUid)? addItem,
    TResult? Function(String itemUid)? removeItem,
    TResult? Function(String? uid)? clear,
    TResult? Function()? setToInitial,
  }) {
    return clear?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String itemUid)? addItem,
    TResult Function(String itemUid)? removeItem,
    TResult Function(String? uid)? clear,
    TResult Function()? setToInitial,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SetToInitial value) setToInitial,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_SetToInitial value)? setToInitial,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_Clear value)? clear,
    TResult Function(_SetToInitial value)? setToInitial,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements GroceryListDetailsEvent {
  const factory _Clear({required final String? uid}) = _$ClearImpl;

  String? get uid;
  @JsonKey(ignore: true)
  _$$ClearImplCopyWith<_$ClearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetToInitialImplCopyWith<$Res> {
  factory _$$SetToInitialImplCopyWith(
          _$SetToInitialImpl value, $Res Function(_$SetToInitialImpl) then) =
      __$$SetToInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetToInitialImplCopyWithImpl<$Res>
    extends _$GroceryListDetailsEventCopyWithImpl<$Res, _$SetToInitialImpl>
    implements _$$SetToInitialImplCopyWith<$Res> {
  __$$SetToInitialImplCopyWithImpl(
      _$SetToInitialImpl _value, $Res Function(_$SetToInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetToInitialImpl implements _SetToInitial {
  const _$SetToInitialImpl();

  @override
  String toString() {
    return 'GroceryListDetailsEvent.setToInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetToInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? uid) getDetails,
    required TResult Function(String itemUid) addItem,
    required TResult Function(String itemUid) removeItem,
    required TResult Function(String? uid) clear,
    required TResult Function() setToInitial,
  }) {
    return setToInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? uid)? getDetails,
    TResult? Function(String itemUid)? addItem,
    TResult? Function(String itemUid)? removeItem,
    TResult? Function(String? uid)? clear,
    TResult? Function()? setToInitial,
  }) {
    return setToInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? uid)? getDetails,
    TResult Function(String itemUid)? addItem,
    TResult Function(String itemUid)? removeItem,
    TResult Function(String? uid)? clear,
    TResult Function()? setToInitial,
    required TResult orElse(),
  }) {
    if (setToInitial != null) {
      return setToInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_Clear value) clear,
    required TResult Function(_SetToInitial value) setToInitial,
  }) {
    return setToInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_SetToInitial value)? setToInitial,
  }) {
    return setToInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_Clear value)? clear,
    TResult Function(_SetToInitial value)? setToInitial,
    required TResult orElse(),
  }) {
    if (setToInitial != null) {
      return setToInitial(this);
    }
    return orElse();
  }
}

abstract class _SetToInitial implements GroceryListDetailsEvent {
  const factory _SetToInitial() = _$SetToInitialImpl;
}

/// @nodoc
mixin _$GroceryListDetailsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  BlocStatus get addItemStatus => throw _privateConstructorUsedError;
  BlocStatus get removeItemStatus => throw _privateConstructorUsedError;
  BlocStatus get clearStatus => throw _privateConstructorUsedError;
  GroceryListDetailsModel? get groceryList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroceryListDetailsStateCopyWith<GroceryListDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryListDetailsStateCopyWith<$Res> {
  factory $GroceryListDetailsStateCopyWith(GroceryListDetailsState value,
          $Res Function(GroceryListDetailsState) then) =
      _$GroceryListDetailsStateCopyWithImpl<$Res, GroceryListDetailsState>;
  @useResult
  $Res call(
      {BlocStatus status,
      BlocStatus addItemStatus,
      BlocStatus removeItemStatus,
      BlocStatus clearStatus,
      GroceryListDetailsModel? groceryList});

  $BlocStatusCopyWith<$Res> get status;
  $BlocStatusCopyWith<$Res> get addItemStatus;
  $BlocStatusCopyWith<$Res> get removeItemStatus;
  $BlocStatusCopyWith<$Res> get clearStatus;
  $GroceryListDetailsModelCopyWith<$Res>? get groceryList;
}

/// @nodoc
class _$GroceryListDetailsStateCopyWithImpl<$Res,
        $Val extends GroceryListDetailsState>
    implements $GroceryListDetailsStateCopyWith<$Res> {
  _$GroceryListDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? addItemStatus = null,
    Object? removeItemStatus = null,
    Object? clearStatus = null,
    Object? groceryList = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      addItemStatus: null == addItemStatus
          ? _value.addItemStatus
          : addItemStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      removeItemStatus: null == removeItemStatus
          ? _value.removeItemStatus
          : removeItemStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      clearStatus: null == clearStatus
          ? _value.clearStatus
          : clearStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      groceryList: freezed == groceryList
          ? _value.groceryList
          : groceryList // ignore: cast_nullable_to_non_nullable
              as GroceryListDetailsModel?,
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
  $BlocStatusCopyWith<$Res> get addItemStatus {
    return $BlocStatusCopyWith<$Res>(_value.addItemStatus, (value) {
      return _then(_value.copyWith(addItemStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStatusCopyWith<$Res> get removeItemStatus {
    return $BlocStatusCopyWith<$Res>(_value.removeItemStatus, (value) {
      return _then(_value.copyWith(removeItemStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocStatusCopyWith<$Res> get clearStatus {
    return $BlocStatusCopyWith<$Res>(_value.clearStatus, (value) {
      return _then(_value.copyWith(clearStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GroceryListDetailsModelCopyWith<$Res>? get groceryList {
    if (_value.groceryList == null) {
      return null;
    }

    return $GroceryListDetailsModelCopyWith<$Res>(_value.groceryList!, (value) {
      return _then(_value.copyWith(groceryList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroceryListDetailsStateImplCopyWith<$Res>
    implements $GroceryListDetailsStateCopyWith<$Res> {
  factory _$$GroceryListDetailsStateImplCopyWith(
          _$GroceryListDetailsStateImpl value,
          $Res Function(_$GroceryListDetailsStateImpl) then) =
      __$$GroceryListDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      BlocStatus addItemStatus,
      BlocStatus removeItemStatus,
      BlocStatus clearStatus,
      GroceryListDetailsModel? groceryList});

  @override
  $BlocStatusCopyWith<$Res> get status;
  @override
  $BlocStatusCopyWith<$Res> get addItemStatus;
  @override
  $BlocStatusCopyWith<$Res> get removeItemStatus;
  @override
  $BlocStatusCopyWith<$Res> get clearStatus;
  @override
  $GroceryListDetailsModelCopyWith<$Res>? get groceryList;
}

/// @nodoc
class __$$GroceryListDetailsStateImplCopyWithImpl<$Res>
    extends _$GroceryListDetailsStateCopyWithImpl<$Res,
        _$GroceryListDetailsStateImpl>
    implements _$$GroceryListDetailsStateImplCopyWith<$Res> {
  __$$GroceryListDetailsStateImplCopyWithImpl(
      _$GroceryListDetailsStateImpl _value,
      $Res Function(_$GroceryListDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? addItemStatus = null,
    Object? removeItemStatus = null,
    Object? clearStatus = null,
    Object? groceryList = freezed,
  }) {
    return _then(_$GroceryListDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      addItemStatus: null == addItemStatus
          ? _value.addItemStatus
          : addItemStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      removeItemStatus: null == removeItemStatus
          ? _value.removeItemStatus
          : removeItemStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      clearStatus: null == clearStatus
          ? _value.clearStatus
          : clearStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      groceryList: freezed == groceryList
          ? _value.groceryList
          : groceryList // ignore: cast_nullable_to_non_nullable
              as GroceryListDetailsModel?,
    ));
  }
}

/// @nodoc

class _$GroceryListDetailsStateImpl extends _GroceryListDetailsState {
  const _$GroceryListDetailsStateImpl(
      {this.status = const BlocStatus.initial(),
      this.addItemStatus = const BlocStatus.initial(),
      this.removeItemStatus = const BlocStatus.initial(),
      this.clearStatus = const BlocStatus.initial(),
      this.groceryList})
      : super._();

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final BlocStatus addItemStatus;
  @override
  @JsonKey()
  final BlocStatus removeItemStatus;
  @override
  @JsonKey()
  final BlocStatus clearStatus;
  @override
  final GroceryListDetailsModel? groceryList;

  @override
  String toString() {
    return 'GroceryListDetailsState(status: $status, addItemStatus: $addItemStatus, removeItemStatus: $removeItemStatus, clearStatus: $clearStatus, groceryList: $groceryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryListDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.addItemStatus, addItemStatus) ||
                other.addItemStatus == addItemStatus) &&
            (identical(other.removeItemStatus, removeItemStatus) ||
                other.removeItemStatus == removeItemStatus) &&
            (identical(other.clearStatus, clearStatus) ||
                other.clearStatus == clearStatus) &&
            (identical(other.groceryList, groceryList) ||
                other.groceryList == groceryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, addItemStatus,
      removeItemStatus, clearStatus, groceryList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryListDetailsStateImplCopyWith<_$GroceryListDetailsStateImpl>
      get copyWith => __$$GroceryListDetailsStateImplCopyWithImpl<
          _$GroceryListDetailsStateImpl>(this, _$identity);
}

abstract class _GroceryListDetailsState extends GroceryListDetailsState {
  const factory _GroceryListDetailsState(
          {final BlocStatus status,
          final BlocStatus addItemStatus,
          final BlocStatus removeItemStatus,
          final BlocStatus clearStatus,
          final GroceryListDetailsModel? groceryList}) =
      _$GroceryListDetailsStateImpl;
  const _GroceryListDetailsState._() : super._();

  @override
  BlocStatus get status;
  @override
  BlocStatus get addItemStatus;
  @override
  BlocStatus get removeItemStatus;
  @override
  BlocStatus get clearStatus;
  @override
  GroceryListDetailsModel? get groceryList;
  @override
  @JsonKey(ignore: true)
  _$$GroceryListDetailsStateImplCopyWith<_$GroceryListDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
