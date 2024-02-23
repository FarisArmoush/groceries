import 'package:groceries/config/routes/app_route.dart';

extension AppRoutePath on AppRoute {
  String get path => '/$name';
}
