import 'package:groceries/bootstrap.dart';
import 'package:groceries/config/services/crashlytics_service.dart';
import 'package:groceries/main_common.dart';
import 'package:groceries/presentation/models/app_flavor/app_flavor.dart';

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
