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

extension PriorityModelMapper on PriorityModel {
  PriorityEntity toEntity() {
    return PriorityEntity(
      id: id,
      name: name,
      color: color,
      index: index,
    );
  }
}

extension PriorityEntityMapper on PriorityEntity {
  PriorityModel toModel() {
    return PriorityModel(
      id: id,
      name: name,
      color: color,
      index: index,
    );
  }
}
