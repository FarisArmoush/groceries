import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';

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

  factory PriorityModel.fromJson(JSON json) => _$PriorityModelFromJson(json);
}
