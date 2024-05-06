import 'package:groceries/bootstrap.dart';
import 'package:groceries/main_common.dart';
import 'package:groceries/presentation/models/app_flavor/app_flavor.dart';

void main() {
  bootstrap(() {
    const flavor = AppFlavor(
      apiUrl: 'Development URL',
      environment: FlavorEnvironments.development,
    );
    return mainCommon(flavor);
  });
}
