import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_status.freezed.dart';

@freezed
class BaseStatus with _$BaseStatus {
  const factory BaseStatus.initial() = Initial;

  const factory BaseStatus.loading() = Loading;

  const factory BaseStatus.success() = Success;

  const factory BaseStatus.failure(String error) = Failure;
}
