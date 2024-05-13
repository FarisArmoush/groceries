import 'package:freezed_annotation/freezed_annotation.dart';

part 'priority_model.freezed.dart';
part 'priority_model.g.dart';

@freezed
class PriorityModel with _$PriorityModel {
  factory PriorityModel({
    String? color,
    String? id,
    int? index,
    String? name,
  }) = _PriorityModel;

  factory PriorityModel.fromJson(Map<String, dynamic> json) =>
      _$PriorityModelFromJson(json);
}
