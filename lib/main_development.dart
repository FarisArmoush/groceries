import 'package:groceries/bootstrap.dart';
import 'package:groceries/config/injection/injector.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
import 'package:groceries/main_common.dart';

void main() {
  const flavor = AppFlavor(
    apiUrl: 'Development URL',
    environment: FlavorEnvironments.development,
  );
  injector.registerSingleton<AppFlavor>(flavor);
  bootstrap(mainCommon);
}
