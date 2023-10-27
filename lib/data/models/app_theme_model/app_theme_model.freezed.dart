// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppThemeModel {
  String get title => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeModelCopyWith<AppThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeModelCopyWith<$Res> {
  factory $AppThemeModelCopyWith(
          AppThemeModel value, $Res Function(AppThemeModel) then) =
      _$AppThemeModelCopyWithImpl<$Res, AppThemeModel>;
  @useResult
  $Res call({String title, ThemeMode themeMode});
}

/// @nodoc
class _$AppThemeModelCopyWithImpl<$Res, $Val extends AppThemeModel>
    implements $AppThemeModelCopyWith<$Res> {
  _$AppThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeModelImplCopyWith<$Res>
    implements $AppThemeModelCopyWith<$Res> {
  factory _$$AppThemeModelImplCopyWith(
          _$AppThemeModelImpl value, $Res Function(_$AppThemeModelImpl) then) =
      __$$AppThemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, ThemeMode themeMode});
}

/// @nodoc
class __$$AppThemeModelImplCopyWithImpl<$Res>
    extends _$AppThemeModelCopyWithImpl<$Res, _$AppThemeModelImpl>
    implements _$$AppThemeModelImplCopyWith<$Res> {
  __$$AppThemeModelImplCopyWithImpl(
      _$AppThemeModelImpl _value, $Res Function(_$AppThemeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? themeMode = null,
  }) {
    return _then(_$AppThemeModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$AppThemeModelImpl implements _AppThemeModel {
  _$AppThemeModelImpl({required this.title, required this.themeMode});

  @override
  final String title;
  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppThemeModel(title: $title, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeModelImplCopyWith<_$AppThemeModelImpl> get copyWith =>
      __$$AppThemeModelImplCopyWithImpl<_$AppThemeModelImpl>(this, _$identity);
}

abstract class _AppThemeModel implements AppThemeModel {
  factory _AppThemeModel(
      {required final String title,
      required final ThemeMode themeMode}) = _$AppThemeModelImpl;

  @override
  String get title;
  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$AppThemeModelImplCopyWith<_$AppThemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
