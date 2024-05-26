import 'package:groceries/bootstrap.dart';
import 'package:groceries/main_common.dart';
import 'package:groceries/presentation/models/flavor/flavor.dart';

void main() {
  bootstrap(() {
    const flavor = Flavor(
      environment: FlavorEnvironment.development,
    );
    return mainCommon(flavor);
  });
}
