import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';

part 'priority_entity.freezed.dart';

@freezed
class PriorityEntity with _$PriorityEntity {
  factory PriorityEntity({
    String? color,
    String? id,
    int? index,
    String? name,
  }) = _PriorityEntity;
}

extension PriorityModelMapper on PriorityModel? {
  PriorityEntity? toEntity() {
    if (this == null) return null;
    return PriorityEntity(
      id: this?.id,
      name: this?.name,
      color: this?.color,
      index: this?.index,
    );
  }
}

extension PriorityEntityMapper on PriorityEntity? {
  PriorityModel? toModel() {
    if (this == null) return null;
    return PriorityModel(
      id: this?.id,
      name: this?.name,
      color: this?.color,
      index: this?.index,
    );
  }
}
