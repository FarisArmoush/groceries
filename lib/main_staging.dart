import 'package:groceries/bootstrap.dart';
import 'package:groceries/config/injection/injector.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
import 'package:groceries/main_common.dart';

void main() {
  bootstrap(() async {
    const flavor = AppFlavor(
      apiUrl: 'Staging URL',
      environment: FlavorEnvironments.staging,
    );
    injector.registerSingleton<AppFlavor>(flavor);
    return mainCommon();
  });
}
