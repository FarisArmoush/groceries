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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroceryListModel groceryListModel) createList,
    required TResult Function(String name) nameChanged,
    required TResult Function(String icon) iconChanged,
    required TResult Function() getIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroceryListModel groceryListModel)? createList,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String icon)? iconChanged,
    TResult? Function()? getIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroceryListModel groceryListModel)? createList,
    TResult Function(String name)? nameChanged,
    TResult Function(String icon)? iconChanged,
    TResult Function()? getIcons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateList value) createList,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_IconChanged value) iconChanged,
    required TResult Function(_GetIcons value) getIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_IconChanged value)? iconChanged,
    TResult? Function(_GetIcons value)? getIcons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateList value)? createList,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_IconChanged value)? iconChanged,
    TResult Function(_GetIcons value)? getIcons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateListEventCopyWith<$Res> {
  factory $CreateListEventCopyWith(
          CreateListEvent value, $Res Function(CreateListEvent) then) =
      _$CreateListEventCopyWithImpl<$Res, CreateListEvent>;
}

/// @nodoc
class _$CreateListEventCopyWithImpl<$Res, $Val extends CreateListEvent>
    implements $CreateListEventCopyWith<$Res> {
  _$CreateListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateListImplCopyWith<$Res> {
  factory _$$CreateListImplCopyWith(
          _$CreateListImpl value, $Res Function(_$CreateListImpl) then) =
      __$$CreateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GroceryListModel groceryListModel});

  $GroceryListModelCopyWith<$Res> get groceryListModel;
}

/// @nodoc
class __$$CreateListImplCopyWithImpl<$Res>
    extends _$CreateListEventCopyWithImpl<$Res, _$CreateListImpl>
    implements _$$CreateListImplCopyWith<$Res> {
  __$$CreateListImplCopyWithImpl(
      _$CreateListImpl _value, $Res Function(_$CreateListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListModel = null,
  }) {
    return _then(_$CreateListImpl(
      groceryListModel: null == groceryListModel
          ? _value.groceryListModel
          : groceryListModel // ignore: cast_nullable_to_non_nullable
              as GroceryListModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroceryListModelCopyWith<$Res> get groceryListModel {
    return $GroceryListModelCopyWith<$Res>(_value.groceryListModel, (value) {
      return _then(_value.copyWith(groceryListModel: value));
    });
  }
}

/// @nodoc

class _$CreateListImpl implements _CreateList {
  const _$CreateListImpl({required this.groceryListModel});

  @override
  final GroceryListModel groceryListModel;

  @override
  String toString() {
    return 'CreateListEvent.createList(groceryListModel: $groceryListModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateListImpl &&
            (identical(other.groceryListModel, groceryListModel) ||
                other.groceryListModel == groceryListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateListImplCopyWith<_$CreateListImpl> get copyWith =>
      __$$CreateListImplCopyWithImpl<_$CreateListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroceryListModel groceryListModel) createList,
    required TResult Function(String name) nameChanged,
    required TResult Function(String icon) iconChanged,
    required TResult Function() getIcons,
  }) {
    return createList(groceryListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroceryListModel groceryListModel)? createList,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String icon)? iconChanged,
    TResult? Function()? getIcons,
  }) {
    return createList?.call(groceryListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroceryListModel groceryListModel)? createList,
    TResult Function(String name)? nameChanged,
    TResult Function(String icon)? iconChanged,
    TResult Function()? getIcons,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_IconChanged value) iconChanged,
    required TResult Function(_GetIcons value) getIcons,
  }) {
    return createList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_IconChanged value)? iconChanged,
    TResult? Function(_GetIcons value)? getIcons,
  }) {
    return createList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateList value)? createList,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_IconChanged value)? iconChanged,
    TResult Function(_GetIcons value)? getIcons,
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
      {required final GroceryListModel groceryListModel}) = _$CreateListImpl;

  GroceryListModel get groceryListModel;
  @JsonKey(ignore: true)
  _$$CreateListImplCopyWith<_$CreateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$CreateListEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateListEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroceryListModel groceryListModel) createList,
    required TResult Function(String name) nameChanged,
    required TResult Function(String icon) iconChanged,
    required TResult Function() getIcons,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroceryListModel groceryListModel)? createList,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String icon)? iconChanged,
    TResult? Function()? getIcons,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroceryListModel groceryListModel)? createList,
    TResult Function(String name)? nameChanged,
    TResult Function(String icon)? iconChanged,
    TResult Function()? getIcons,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateList value) createList,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_IconChanged value) iconChanged,
    required TResult Function(_GetIcons value) getIcons,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_IconChanged value)? iconChanged,
    TResult? Function(_GetIcons value)? getIcons,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateList value)? createList,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_IconChanged value)? iconChanged,
    TResult Function(_GetIcons value)? getIcons,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CreateListEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IconChangedImplCopyWith<$Res> {
  factory _$$IconChangedImplCopyWith(
          _$IconChangedImpl value, $Res Function(_$IconChangedImpl) then) =
      __$$IconChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String icon});
}

/// @nodoc
class __$$IconChangedImplCopyWithImpl<$Res>
    extends _$CreateListEventCopyWithImpl<$Res, _$IconChangedImpl>
    implements _$$IconChangedImplCopyWith<$Res> {
  __$$IconChangedImplCopyWithImpl(
      _$IconChangedImpl _value, $Res Function(_$IconChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
  }) {
    return _then(_$IconChangedImpl(
      null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IconChangedImpl implements _IconChanged {
  const _$IconChangedImpl(this.icon);

  @override
  final String icon;

  @override
  String toString() {
    return 'CreateListEvent.iconChanged(icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconChangedImpl &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IconChangedImplCopyWith<_$IconChangedImpl> get copyWith =>
      __$$IconChangedImplCopyWithImpl<_$IconChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroceryListModel groceryListModel) createList,
    required TResult Function(String name) nameChanged,
    required TResult Function(String icon) iconChanged,
    required TResult Function() getIcons,
  }) {
    return iconChanged(icon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroceryListModel groceryListModel)? createList,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String icon)? iconChanged,
    TResult? Function()? getIcons,
  }) {
    return iconChanged?.call(icon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroceryListModel groceryListModel)? createList,
    TResult Function(String name)? nameChanged,
    TResult Function(String icon)? iconChanged,
    TResult Function()? getIcons,
    required TResult orElse(),
  }) {
    if (iconChanged != null) {
      return iconChanged(icon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateList value) createList,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_IconChanged value) iconChanged,
    required TResult Function(_GetIcons value) getIcons,
  }) {
    return iconChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_IconChanged value)? iconChanged,
    TResult? Function(_GetIcons value)? getIcons,
  }) {
    return iconChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateList value)? createList,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_IconChanged value)? iconChanged,
    TResult Function(_GetIcons value)? getIcons,
    required TResult orElse(),
  }) {
    if (iconChanged != null) {
      return iconChanged(this);
    }
    return orElse();
  }
}

abstract class _IconChanged implements CreateListEvent {
  const factory _IconChanged(final String icon) = _$IconChangedImpl;

  String get icon;
  @JsonKey(ignore: true)
  _$$IconChangedImplCopyWith<_$IconChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetIconsImplCopyWith<$Res> {
  factory _$$GetIconsImplCopyWith(
          _$GetIconsImpl value, $Res Function(_$GetIconsImpl) then) =
      __$$GetIconsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIconsImplCopyWithImpl<$Res>
    extends _$CreateListEventCopyWithImpl<$Res, _$GetIconsImpl>
    implements _$$GetIconsImplCopyWith<$Res> {
  __$$GetIconsImplCopyWithImpl(
      _$GetIconsImpl _value, $Res Function(_$GetIconsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetIconsImpl implements _GetIcons {
  const _$GetIconsImpl();

  @override
  String toString() {
    return 'CreateListEvent.getIcons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetIconsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroceryListModel groceryListModel) createList,
    required TResult Function(String name) nameChanged,
    required TResult Function(String icon) iconChanged,
    required TResult Function() getIcons,
  }) {
    return getIcons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroceryListModel groceryListModel)? createList,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String icon)? iconChanged,
    TResult? Function()? getIcons,
  }) {
    return getIcons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroceryListModel groceryListModel)? createList,
    TResult Function(String name)? nameChanged,
    TResult Function(String icon)? iconChanged,
    TResult Function()? getIcons,
    required TResult orElse(),
  }) {
    if (getIcons != null) {
      return getIcons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateList value) createList,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_IconChanged value) iconChanged,
    required TResult Function(_GetIcons value) getIcons,
  }) {
    return getIcons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateList value)? createList,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_IconChanged value)? iconChanged,
    TResult? Function(_GetIcons value)? getIcons,
  }) {
    return getIcons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateList value)? createList,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_IconChanged value)? iconChanged,
    TResult Function(_GetIcons value)? getIcons,
    required TResult orElse(),
  }) {
    if (getIcons != null) {
      return getIcons(this);
    }
    return orElse();
  }
}

abstract class _GetIcons implements CreateListEvent {
  const factory _GetIcons() = _$GetIconsImpl;
}

/// @nodoc
mixin _$CreateListState {
  BlocStatus get status => throw _privateConstructorUsedError;
  FormzSubmissionStatus get formStatus => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  GroceryListNameForm get listName => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  List<String> get iconsPaths => throw _privateConstructorUsedError;

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
  $Res call(
      {BlocStatus status,
      FormzSubmissionStatus formStatus,
      bool isValid,
      GroceryListNameForm listName,
      String? icon,
      List<String> iconsPaths});

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
    Object? formStatus = null,
    Object? isValid = null,
    Object? listName = null,
    Object? icon = freezed,
    Object? iconsPaths = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as GroceryListNameForm,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconsPaths: null == iconsPaths
          ? _value.iconsPaths
          : iconsPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$CreateListStateImplCopyWith<$Res>
    implements $CreateListStateCopyWith<$Res> {
  factory _$$CreateListStateImplCopyWith(_$CreateListStateImpl value,
          $Res Function(_$CreateListStateImpl) then) =
      __$$CreateListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      FormzSubmissionStatus formStatus,
      bool isValid,
      GroceryListNameForm listName,
      String? icon,
      List<String> iconsPaths});

  @override
  $BlocStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$CreateListStateImplCopyWithImpl<$Res>
    extends _$CreateListStateCopyWithImpl<$Res, _$CreateListStateImpl>
    implements _$$CreateListStateImplCopyWith<$Res> {
  __$$CreateListStateImplCopyWithImpl(
      _$CreateListStateImpl _value, $Res Function(_$CreateListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? formStatus = null,
    Object? isValid = null,
    Object? listName = null,
    Object? icon = freezed,
    Object? iconsPaths = null,
  }) {
    return _then(_$CreateListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as GroceryListNameForm,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconsPaths: null == iconsPaths
          ? _value._iconsPaths
          : iconsPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreateListStateImpl implements _CreateListState {
  const _$CreateListStateImpl(
      {this.status = const BlocStatus.initial(),
      this.formStatus = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.listName = const GroceryListNameForm.pure(''),
      this.icon,
      final List<String> iconsPaths = const <String>[]})
      : _iconsPaths = iconsPaths;

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final FormzSubmissionStatus formStatus;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final GroceryListNameForm listName;
  @override
  final String? icon;
  final List<String> _iconsPaths;
  @override
  @JsonKey()
  List<String> get iconsPaths {
    if (_iconsPaths is EqualUnmodifiableListView) return _iconsPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_iconsPaths);
  }

  @override
  String toString() {
    return 'CreateListState(status: $status, formStatus: $formStatus, isValid: $isValid, listName: $listName, icon: $icon, iconsPaths: $iconsPaths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.listName, listName) ||
                other.listName == listName) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality()
                .equals(other._iconsPaths, _iconsPaths));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, formStatus, isValid,
      listName, icon, const DeepCollectionEquality().hash(_iconsPaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateListStateImplCopyWith<_$CreateListStateImpl> get copyWith =>
      __$$CreateListStateImplCopyWithImpl<_$CreateListStateImpl>(
          this, _$identity);
}

abstract class _CreateListState implements CreateListState {
  const factory _CreateListState(
      {final BlocStatus status,
      final FormzSubmissionStatus formStatus,
      final bool isValid,
      final GroceryListNameForm listName,
      final String? icon,
      final List<String> iconsPaths}) = _$CreateListStateImpl;

  @override
  BlocStatus get status;
  @override
  FormzSubmissionStatus get formStatus;
  @override
  bool get isValid;
  @override
  GroceryListNameForm get listName;
  @override
  String? get icon;
  @override
  List<String> get iconsPaths;
  @override
  @JsonKey(ignore: true)
  _$$CreateListStateImplCopyWith<_$CreateListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
