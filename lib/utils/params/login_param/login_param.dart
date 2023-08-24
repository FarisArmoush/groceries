import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_param.g.dart';
part 'login_param.freezed.dart';

@freezed
class LoginParam with _$LoginParam {
  const factory LoginParam({
    required String email,
    required String password,
  }) = _LoginParam;

  factory LoginParam.fromJson(Map<String, Object?> json) =>
      _$LoginParamFromJson(json);
}
