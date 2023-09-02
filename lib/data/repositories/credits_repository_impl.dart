import 'package:groceries/data/data_sources/local_data_sources/credits_data_source.dart';
import 'package:groceries/data/models/credit_model/credit_model.dart';
import 'package:groceries/domain/repositories/credits_repository.dart';

class CreditsRepositoryImpl extends CreditsRepository {
  CreditsRepositoryImpl(this._creditsDataSource);

  final CreditsDataSource _creditsDataSource;
  @override
  List<CreditModel> get uiPackages {
    return _creditsDataSource.uiPackages;
  }

  @override
  List<CreditModel> get backendPackages {
    return _creditsDataSource.backendPackages;
  }

  @override
  List<CreditModel> get miscPackages {
    return _creditsDataSource.miscPackages;
  }

  @override
  List<CreditModel> get devPackages {
    return _creditsDataSource.devPackages;
  }

  @override
  List<CreditModel> get stateManagementPackages {
    return _creditsDataSource.stateManagementPackages;
  }
}
