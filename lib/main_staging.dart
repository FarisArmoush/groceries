import 'package:groceries/bootstrap.dart';
import 'package:groceries/config/services/crashlytics_service.dart';
import 'package:groceries/main_common.dart';

void main() {
  bootstrap(() async {
    CrashlyticsService()
      ..initCrashlytics()
      ..initPlatformErrorsHandler();
    return mainCommon();
  });
}
