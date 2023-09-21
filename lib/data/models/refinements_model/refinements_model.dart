import 'package:freezed_annotation/freezed_annotation.dart';

part 'refinements_model.freezed.dart';
part 'refinements_model.g.dart';

@freezed
class RefinementsModel with _$RefinementsModel {
  const factory RefinementsModel({
    required String refinement,
    required bool isChecked,
  }) = _RefinementsModel;

  factory RefinementsModel.fromJson(Map<String, Object?> json) =>
      _$RefinementsModelFromJson(json);
}
