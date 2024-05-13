import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';

part 'refinements_model.freezed.dart';
part 'refinements_model.g.dart';

@freezed
class RefinementsModel with _$RefinementsModel {
  const factory RefinementsModel({
    String? refinement,
    bool? isChecked,
  }) = _RefinementsModel;

  factory RefinementsModel.fromJson(JSON json) =>
      _$RefinementsModelFromJson(json);
}
