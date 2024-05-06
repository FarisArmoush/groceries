import 'package:groceries/bootstrap.dart';
import 'package:groceries/main_common.dart';
import 'package:groceries/presentation/models/app_flavor/app_flavor.dart';

void main() {
  bootstrap(() async {
    const flavor = AppFlavor(
      apiUrl: 'Staging URL',
      environment: FlavorEnvironments.staging,
    );
    return mainCommon(flavor);
  });
}
