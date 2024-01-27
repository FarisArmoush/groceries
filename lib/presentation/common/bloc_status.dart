import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_status.freezed.dart';

@freezed
class BlocStatus with _$BlocStatus {
  const factory BlocStatus.initial() = _Initial;
  const factory BlocStatus.loading() = _Loading;
  const factory BlocStatus.success() = _Success;
  const factory BlocStatus.failure(String error) = _Failure;
}
