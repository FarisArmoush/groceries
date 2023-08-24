import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_param.g.dart';
part 'register_param.freezed.dart';

@freezed
class RegisterParam with _$RegisterParam {
  const factory RegisterParam({
    required String email,
    required String password,
    required String displayName,
  }) = _RegisterParam;

  factory RegisterParam.fromJson(Map<String, Object?> json) =>
      _$RegisterParamFromJson(json);
}
