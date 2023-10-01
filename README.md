# About Groceries

Groceries is grocery list mobile app that helps users organize and manage their
lists. Groceries allows you to create multiple lists for different purposes.

Groceries supports item categorization, quantity tracking and the ability to 
share lists with others, making it convenient for families, friends or any group 
to coordinate their shopping activities.

Overall, Groceries is designed to simplify the process of creating and managing 
shopping lists, making it easier to remember what you need to buy and ensuring
you dont forget any essential items while grocery shopping.

amoudi.hamza@gmail.com


  final FetchCreditsUseCase _creditsUseCase;

  List<CreditModel> get uiPackages => _creditsUseCase.uiPackages;
  List<CreditModel> get backendPackages => _creditsUseCase.backendPackages;
  List<CreditModel> get devPackages => _creditsUseCase.devPackages;
  List<CreditModel> get miscPackages => _creditsUseCase.miscPackages;
  List<CreditModel> get stateManagementPackages =>
      _creditsUseCase.stateManagementPackages;