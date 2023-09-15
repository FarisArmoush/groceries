part of '../repositories.dart';

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
