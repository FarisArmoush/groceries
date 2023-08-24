// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditModel {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditModelCopyWith<CreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditModelCopyWith<$Res> {
  factory $CreditModelCopyWith(
          CreditModel value, $Res Function(CreditModel) then) =
      _$CreditModelCopyWithImpl<$Res, CreditModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreditModelCopyWithImpl<$Res, $Val extends CreditModel>
    implements $CreditModelCopyWith<$Res> {
  _$CreditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditModelCopyWith<$Res>
    implements $CreditModelCopyWith<$Res> {
  factory _$$_CreditModelCopyWith(
          _$_CreditModel value, $Res Function(_$_CreditModel) then) =
      __$$_CreditModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CreditModelCopyWithImpl<$Res>
    extends _$CreditModelCopyWithImpl<$Res, _$_CreditModel>
    implements _$$_CreditModelCopyWith<$Res> {
  __$$_CreditModelCopyWithImpl(
      _$_CreditModel _value, $Res Function(_$_CreditModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CreditModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreditModel implements _CreditModel {
  const _$_CreditModel({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'CreditModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditModel &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditModelCopyWith<_$_CreditModel> get copyWith =>
      __$$_CreditModelCopyWithImpl<_$_CreditModel>(this, _$identity);
}

abstract class _CreditModel implements CreditModel {
  const factory _CreditModel({required final String name}) = _$_CreditModel;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreditModelCopyWith<_$_CreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}
