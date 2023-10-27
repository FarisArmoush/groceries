// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refinements_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefinementsModel _$RefinementsModelFromJson(Map<String, dynamic> json) {
  return _RefinementsModel.fromJson(json);
}

/// @nodoc
mixin _$RefinementsModel {
  String? get refinement => throw _privateConstructorUsedError;
  bool? get isChecked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefinementsModelCopyWith<RefinementsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefinementsModelCopyWith<$Res> {
  factory $RefinementsModelCopyWith(
          RefinementsModel value, $Res Function(RefinementsModel) then) =
      _$RefinementsModelCopyWithImpl<$Res, RefinementsModel>;
  @useResult
  $Res call({String? refinement, bool? isChecked});
}

/// @nodoc
class _$RefinementsModelCopyWithImpl<$Res, $Val extends RefinementsModel>
    implements $RefinementsModelCopyWith<$Res> {
  _$RefinementsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refinement = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_value.copyWith(
      refinement: freezed == refinement
          ? _value.refinement
          : refinement // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefinementsModelImplCopyWith<$Res>
    implements $RefinementsModelCopyWith<$Res> {
  factory _$$RefinementsModelImplCopyWith(_$RefinementsModelImpl value,
          $Res Function(_$RefinementsModelImpl) then) =
      __$$RefinementsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? refinement, bool? isChecked});
}

/// @nodoc
class __$$RefinementsModelImplCopyWithImpl<$Res>
    extends _$RefinementsModelCopyWithImpl<$Res, _$RefinementsModelImpl>
    implements _$$RefinementsModelImplCopyWith<$Res> {
  __$$RefinementsModelImplCopyWithImpl(_$RefinementsModelImpl _value,
      $Res Function(_$RefinementsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refinement = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_$RefinementsModelImpl(
      refinement: freezed == refinement
          ? _value.refinement
          : refinement // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefinementsModelImpl implements _RefinementsModel {
  const _$RefinementsModelImpl(
      {required this.refinement, required this.isChecked});

  factory _$RefinementsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefinementsModelImplFromJson(json);

  @override
  final String? refinement;
  @override
  final bool? isChecked;

  @override
  String toString() {
    return 'RefinementsModel(refinement: $refinement, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefinementsModelImpl &&
            (identical(other.refinement, refinement) ||
                other.refinement == refinement) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refinement, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefinementsModelImplCopyWith<_$RefinementsModelImpl> get copyWith =>
      __$$RefinementsModelImplCopyWithImpl<_$RefinementsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefinementsModelImplToJson(
      this,
    );
  }
}

abstract class _RefinementsModel implements RefinementsModel {
  const factory _RefinementsModel(
      {required final String? refinement,
      required final bool? isChecked}) = _$RefinementsModelImpl;

  factory _RefinementsModel.fromJson(Map<String, dynamic> json) =
      _$RefinementsModelImpl.fromJson;

  @override
  String? get refinement;
  @override
  bool? get isChecked;
  @override
  @JsonKey(ignore: true)
  _$$RefinementsModelImplCopyWith<_$RefinementsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
