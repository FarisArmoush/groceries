import 'package:groceries/data/data_sources/firebase_crashlytics_data_source.dart';
import 'package:groceries/domain/repositories/firebase_crashlytics_repository.dart';

class FirebaseCrashlyticsRepositoryImpl extends FirebaseCrashlyticsRepository {
  FirebaseCrashlyticsRepositoryImpl({
    FirebaseCrashlyticsDataSource? crashlyticsApi,
  }) : _crashlyticsApi = crashlyticsApi ?? FirebaseCrashlyticsDataSource();

  final FirebaseCrashlyticsDataSource _crashlyticsApi;

  @override
  void initCrashlytics() => _crashlyticsApi.initCrashlytics();

  @override
  void initPlatformErrorsHandler() =>
      _crashlyticsApi.initPlatformErrorsHandler();
}
