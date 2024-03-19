import 'package:groceries/bootstrap.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
import 'package:groceries/main_common.dart';

void main() {
  bootstrap(() {
    const flavor = AppFlavor(
      apiUrl: 'Development URL',
      environment: FlavorEnvironments.development,
    );
    return mainCommon(flavor);
  });
}
