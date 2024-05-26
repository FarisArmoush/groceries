import 'package:groceries/bootstrap.dart';
import 'package:groceries/main_common.dart';
import 'package:groceries/presentation/models/flavor/flavor.dart';

void main() {
  bootstrap(() async {
    const flavor = Flavor(
      environment: FlavorEnvironment.production,
    );
    return mainCommon(flavor);
  });
}
