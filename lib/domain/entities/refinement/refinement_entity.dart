import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';

part 'refinement_entity.freezed.dart';

@freezed
class RefinementEntity with _$RefinementEntity {
  factory RefinementEntity({
    String? refinement,
    bool? isChecked,
  }) = _RefinementEntity;
}

extension RefinementsModelMapper on RefinementsModel {
  RefinementEntity toEntity() {
    return RefinementEntity(
      refinement: refinement,
      isChecked: isChecked,
    );
  }
}

extension RefinementEntityMapper on RefinementEntity {
  RefinementsModel toModel() {
    return RefinementsModel(
      refinement: refinement,
      isChecked: isChecked,
    );
  }
}
