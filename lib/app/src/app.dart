part of '../app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // INSTANCES PROVIDER
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<FirebaseAuth>(
          create: (context) => FirebaseAuth.instance,
        ),
        RepositoryProvider<FirebaseFirestore>(
          create: (context) => FirebaseFirestore.instance,
        ),
        RepositoryProvider<FirebaseRemoteConfig>(
          create: (context) => FirebaseRemoteConfig.instance,
        ),
      ],
      // DATA SOURCES PROVIDER
      child: Builder(
        builder: (context) {
          return MultiRepositoryProvider(
            providers: [
              RepositoryProvider(
                create: (context) => AuthenticationDataSource(
                  firebaseAuth: context.read<FirebaseAuth>(),
                  firestore: context.read<FirebaseFirestore>(),
                ),
                lazy: false,
              ),
              RepositoryProvider(
                create: (context) => CreditsDataSource(),
              ),
              RepositoryProvider(
                create: (context) => RemoteConfigDataSource(
                  remoteConfig: context.read<FirebaseRemoteConfig>(),
                ),
              ),
              RepositoryProvider(
                create: (context) => GroceryListsDataSource(),
              ),
              RepositoryProvider(
                create: (context) => MyTasksDataSource(),
              ),
              RepositoryProvider(
                create: (context) => RecipesDataSource(),
              ),
              RepositoryProvider(
                create: (context) => BaseGroceriesDataSource(),
              ),
            ],

            /// REPOSITORIES PROVIDER
            child: Builder(
              builder: (context) {
                return MultiRepositoryProvider(
                  providers: [
                    RepositoryProvider<AuthenticationRepository>(
                      create: (context) => AuthenticationRepositoryImpl(
                        context.read<AuthenticationDataSource>(),
                      ),
                      lazy: false,
                    ),
                    RepositoryProvider<CreditsRepository>(
                      create: (context) => CreditsRepositoryImpl(
                        context.read<CreditsDataSource>(),
                      ),
                    ),
                    RepositoryProvider<RemoteConfigRepository>(
                      create: (context) => RemoteConfigRepositoryImpl(
                        context.read<RemoteConfigDataSource>(),
                      ),
                    ),
                    RepositoryProvider<GroceryListsRepository>(
                      create: (context) => GroceryListsRepositoryImpl(
                        context.read<GroceryListsDataSource>(),
                      ),
                    ),
                    RepositoryProvider<MyTasksRepository>(
                      create: (context) => MyTasksRepositoryImpl(
                        context.read<MyTasksDataSource>(),
                      ),
                    ),
                    RepositoryProvider<RecipesRepository>(
                      create: (context) => RecipesRepositoryImpl(
                        context.read<RecipesDataSource>(),
                      ),
                    ),
                    RepositoryProvider<BaseGroceriesRepository>(
                      create: (context) => BaseGroceriesRepositoryImpl(
                        context.read<BaseGroceriesDataSource>(),
                      ),
                    ),
                  ],

                  /// USECASES PROVIDER
                  child: Builder(
                    builder: (context) {
                      return MultiRepositoryProvider(
                        providers: [
                          RepositoryProvider(
                            create: (context) => FetchCreditsUseCase(
                              context.read<CreditsRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => RemoteConfigUseCase(
                              context.read<RemoteConfigRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => FetchUserDataUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => GroceryListsUseCase(
                              context.read<GroceryListsRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => MyTasksUseCase(
                              context.read<MyTasksRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => RecipesUseCase(
                              context.read<RecipesRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => DeleteAccountUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) =>
                                LoginWithEmailAndPasswordUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) =>
                                RegisterWithEmailAndPasswordUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => SendPasswordResetEmailUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => UpdateDisplayNameUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => UpdateEmailUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => VerifyUserUseCase(
                              context.read<AuthenticationRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => BaseGroceriesUseCase(
                              context.read<BaseGroceriesRepository>(),
                            ),
                          ),
                        ],
                        child: const AppEasyLocalization(),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
