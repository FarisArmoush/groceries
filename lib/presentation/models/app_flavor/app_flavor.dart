import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_flavor.freezed.dart';

enum FlavorEnvironments {
  development,
  staging,
  production,
}

@freezed
class AppFlavor with _$AppFlavor {
  const factory AppFlavor({
    required String apiUrl,
    required FlavorEnvironments environment,
  }) = _AppFlavor;
}
