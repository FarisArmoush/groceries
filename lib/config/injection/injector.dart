import 'package:get_it/get_it.dart';
import 'package:groceries/config/injection/injector.config.dart';
import 'package:injectable/injectable.dart';

final injector = GetIt.instance;

@InjectableInit()
void configureDependencies() => injector.init();
