import 'package:groceries/data/data_sources/firebase_crashlytics_api.dart';
import 'package:groceries/domain/repositories/base_firebase_crashlytics_repository.dart';

class FirebaseCrashlyticsRepository extends BaseFirebaseCrashlyticsRepository {
  final _crashlyticsApi = FirebaseCrashlyticsApi();
  @override
  void initCrashlytics() => _crashlyticsApi.initCrashlytics();

  @override
  void initPlatformErrorsHandler() =>
      _crashlyticsApi.initPlatformErrorsHandler();
}
