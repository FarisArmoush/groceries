import 'package:groceries/bootstrap.dart';
import 'package:groceries/config/services/crashlytics_service.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
import 'package:groceries/main_common.dart';

void main() {
  bootstrap(() async {
    const flavor = AppFlavor(
      apiUrl: 'Production URL',
      environment: FlavorEnvironments.production,
    );
    CrashlyticsService()
      ..initCrashlytics()
      ..initPlatformErrorsHandler();
    return mainCommon(flavor);
  });
}
