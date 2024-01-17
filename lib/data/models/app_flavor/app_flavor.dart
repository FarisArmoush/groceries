import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_flavor.freezed.dart';

@freezed
class AppFlavor with _$AppFlavor {
  const factory AppFlavor({
    required String apiUrl,
    required FlavorEnvironments environment,
  }) = _AppFlavor;
}

enum FlavorEnvironments {
  development,
  staging,
  production,
}
