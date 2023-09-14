import 'package:groceries/data/models/credit_model/credit_model.dart';
import 'package:groceries/domain/repositories/credits_repository.dart';

class FetchCreditsUseCase {
  const FetchCreditsUseCase(this._creditsRepository);

  final CreditsRepository _creditsRepository;

  List<CreditModel> get uiPackages {
    return _creditsRepository.uiPackages;
  }

  List<CreditModel> get backendPackages {
    return _creditsRepository.backendPackages;
  }

  List<CreditModel> get miscPackages {
    return _creditsRepository.miscPackages;
  }

  List<CreditModel> get devPackages {
    return _creditsRepository.devPackages;
  }

  List<CreditModel> get stateManagementPackages {
    return _creditsRepository.stateManagementPackages;
  }
}
