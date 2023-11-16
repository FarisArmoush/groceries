part of '../app.dart';

class App extends StatelessWidget {
  const App({required this.sharedPreferences, super.key});

  final SharedPreferences sharedPreferences;

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
        RepositoryProvider<SharedPreferences>.value(
          value: sharedPreferences,
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
                create: (context) => RemoteConfigDataSource(
                  context.read<FirebaseRemoteConfig>(),
                ),
              ),
              RepositoryProvider(
                create: (context) => GroceryListsDataSource(
                  context.read<FirebaseFirestore>(),
                ),
              ),
              RepositoryProvider(
                create: (context) => MyTasksDataSource(
                  context.read<FirebaseFirestore>(),
                ),
              ),
              RepositoryProvider(
                create: (context) => RecipesDataSource(
                  context.read<FirebaseFirestore>(),
                ),
              ),
              RepositoryProvider(
                create: (context) => BaseGroceriesDataSource(
                  context.read<FirebaseFirestore>(),
                ),
              ),
              RepositoryProvider(
                create: (context) => CategoriesDataSource(
                  context.read<FirebaseFirestore>(),
                ),
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
                    RepositoryProvider<CategoriesRepository>(
                      create: (context) => CategoriesRepositoryImpl(
                        context.read<CategoriesDataSource>(),
                      ),
                    ),
                  ],

                  /// USECASES PROVIDER
                  child: Builder(
                    builder: (context) {
                      return MultiRepositoryProvider(
                        providers: [
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
                            create: (context) => LogoutUseCase(
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
                            create: (context) => FetchParentCategoriesUseCase(
                              context.read<CategoriesRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => FetchSubCategoriesUseCase(
                              context.read<CategoriesRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => FetchCategoryItemsUseCase(
                              context.read<BaseGroceriesRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => CreateListUseCase(
                              context.read<GroceryListsRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => DeleteGroceryListUseCase(
                              context.read<GroceryListsRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => RemoveMemberFromListUseCase(
                              context.read<GroceryListsRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => UpdateListImageUseCase(
                              context.read<GroceryListsRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => UpdateListNameUseCase(
                              context.read<GroceryListsRepository>(),
                            ),
                          ),
                          RepositoryProvider(
                            create: (context) => CreateRecipeUseCase(
                              context.read<RecipesRepository>(),
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
