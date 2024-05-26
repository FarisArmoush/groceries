import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor.freezed.dart';

enum FlavorEnvironment {
  development,
  staging,
  production,
}

@freezed
class Flavor with _$Flavor {
  const factory Flavor({
    required FlavorEnvironment environment,
  }) = _Flavor;
}
