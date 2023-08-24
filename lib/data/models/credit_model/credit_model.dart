import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_model.freezed.dart';

@freezed
class CreditModel with _$CreditModel {
  const factory CreditModel({
    required String name,
  }) = _CreditModel;
}
