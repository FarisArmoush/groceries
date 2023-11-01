// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingPageModel {
  String get illustrationPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingPageModelCopyWith<OnboardingPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPageModelCopyWith<$Res> {
  factory $OnboardingPageModelCopyWith(
          OnboardingPageModel value, $Res Function(OnboardingPageModel) then) =
      _$OnboardingPageModelCopyWithImpl<$Res, OnboardingPageModel>;
  @useResult
  $Res call(
      {String illustrationPath,
      String title,
      String body,
      Color backgroundColor});
}

/// @nodoc
class _$OnboardingPageModelCopyWithImpl<$Res, $Val extends OnboardingPageModel>
    implements $OnboardingPageModelCopyWith<$Res> {
  _$OnboardingPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illustrationPath = null,
    Object? title = null,
    Object? body = null,
    Object? backgroundColor = null,
  }) {
    return _then(_value.copyWith(
      illustrationPath: null == illustrationPath
          ? _value.illustrationPath
          : illustrationPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingPageModelImplCopyWith<$Res>
    implements $OnboardingPageModelCopyWith<$Res> {
  factory _$$OnboardingPageModelImplCopyWith(_$OnboardingPageModelImpl value,
          $Res Function(_$OnboardingPageModelImpl) then) =
      __$$OnboardingPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String illustrationPath,
      String title,
      String body,
      Color backgroundColor});
}

/// @nodoc
class __$$OnboardingPageModelImplCopyWithImpl<$Res>
    extends _$OnboardingPageModelCopyWithImpl<$Res, _$OnboardingPageModelImpl>
    implements _$$OnboardingPageModelImplCopyWith<$Res> {
  __$$OnboardingPageModelImplCopyWithImpl(_$OnboardingPageModelImpl _value,
      $Res Function(_$OnboardingPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illustrationPath = null,
    Object? title = null,
    Object? body = null,
    Object? backgroundColor = null,
  }) {
    return _then(_$OnboardingPageModelImpl(
      illustrationPath: null == illustrationPath
          ? _value.illustrationPath
          : illustrationPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$OnboardingPageModelImpl implements _OnboardingPageModel {
  _$OnboardingPageModelImpl(
      {required this.illustrationPath,
      required this.title,
      required this.body,
      required this.backgroundColor});

  @override
  final String illustrationPath;
  @override
  final String title;
  @override
  final String body;
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'OnboardingPageModel(illustrationPath: $illustrationPath, title: $title, body: $body, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingPageModelImpl &&
            (identical(other.illustrationPath, illustrationPath) ||
                other.illustrationPath == illustrationPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, illustrationPath, title, body, backgroundColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingPageModelImplCopyWith<_$OnboardingPageModelImpl> get copyWith =>
      __$$OnboardingPageModelImplCopyWithImpl<_$OnboardingPageModelImpl>(
          this, _$identity);
}

abstract class _OnboardingPageModel implements OnboardingPageModel {
  factory _OnboardingPageModel(
      {required final String illustrationPath,
      required final String title,
      required final String body,
      required final Color backgroundColor}) = _$OnboardingPageModelImpl;

  @override
  String get illustrationPath;
  @override
  String get title;
  @override
  String get body;
  @override
  Color get backgroundColor;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingPageModelImplCopyWith<_$OnboardingPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
