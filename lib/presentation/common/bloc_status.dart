import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_status.freezed.dart';

@freezed
class BlocStatus with _$BlocStatus {
  const factory BlocStatus.initial() = Initial;

  const factory BlocStatus.loading() = Loading;

  const factory BlocStatus.success() = Success;

  const factory BlocStatus.failure(String error) = Failure;
}
