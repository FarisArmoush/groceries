import 'package:groceries/data/models/credit_model.dart';

abstract class CreditsRepository {
  List<CreditModel> get uiPackages;
  List<CreditModel> get backendPackages;
  List<CreditModel> get miscPackages;
  List<CreditModel> get devPackages;
  List<CreditModel> get stateManagementPackages;
}
