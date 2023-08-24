part of '../app.dart';

class AppRepositoriesProvider extends StatelessWidget {
  const AppRepositoriesProvider({super.key});

  @override
  Widget build(BuildContext context) {
    /// DATA SOURCES PROVIDER
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationDataSource>(
          create: (context) => AuthenticationDataSource(),
        ),
        RepositoryProvider<CreditsDataSource>(
          create: (context) => CreditsDataSource(),
        ),
        RepositoryProvider<RemoteConfigDataSource>(
          create: (context) => RemoteConfigDataSource(),
        ),
        RepositoryProvider<GroceryListsDataSource>(
          create: (context) => GroceryListsDataSource(),
        ),
        RepositoryProvider<MyTasksDataSource>(
          create: (context) => MyTasksDataSource(),
        ),
        RepositoryProvider<RecipesDataSource>(
          create: (context) => RecipesDataSource(),
        ),
      ],

      /// REPOSITORIES PROVIDER
      child: Builder(
        builder: (context) {
          return MultiRepositoryProvider(
            providers: [
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
            ],

            /// USECASES PROVIDER
            child: Builder(
              builder: (context) {
                return MultiRepositoryProvider(
                  providers: [
                    RepositoryProvider<FetchCreditsUseCase>(
                      create: (context) => FetchCreditsUseCase(
                        context.read<CreditsRepository>(),
                      ),
                    ),
                    RepositoryProvider<FetchAppVersionUseCase>(
                      create: (context) => FetchAppVersionUseCase(
                        context.read<RemoteConfigRepository>(),
                      ),
                    ),
                    RepositoryProvider<FetchUserDataUseCase>(
                      create: (context) => FetchUserDataUseCase(
                        context.read<AuthenticationRepository>(),
                      ),
                    ),
                    RepositoryProvider<GroceryListsUseCase>(
                      create: (context) => GroceryListsUseCase(
                        context.read<GroceryListsRepository>(),
                      ),
                    ),
                    RepositoryProvider<MyTasksUseCase>(
                      create: (context) => MyTasksUseCase(
                        context.read<MyTasksRepository>(),
                      ),
                    ),
                    RepositoryProvider<RecipesUseCase>(
                      create: (context) => RecipesUseCase(
                        context.read<RecipesRepository>(),
                      ),
                    ),
                    RepositoryProvider<DeleteAccountUseCase>(
                      create: (context) => DeleteAccountUseCase(
                        context.read<AuthenticationRepository>(),
                      ),
                    ),
                    RepositoryProvider<LoginWithEmailAndPasswordUseCase>(
                      create: (context) => LoginWithEmailAndPasswordUseCase(
                        context.read<AuthenticationRepository>(),
                      ),
                    ),
                    RepositoryProvider<RegisterWithEmailAndPasswordUseCase>(
                      create: (context) => RegisterWithEmailAndPasswordUseCase(
                        context.read<AuthenticationRepository>(),
                      ),
                    ),
                    RepositoryProvider<SendPasswordResetEmailUseCase>(
                      create: (context) => SendPasswordResetEmailUseCase(
                        context.read<AuthenticationRepository>(),
                      ),
                    ),
                    RepositoryProvider<UpdateDisplayNameUseCase>(
                      create: (context) => UpdateDisplayNameUseCase(
                        context.read<AuthenticationRepository>(),
                      ),
                    ),
                    RepositoryProvider<UpdateEmailUseCase>(
                      create: (context) => UpdateEmailUseCase(
                        context.read<AuthenticationRepository>(),
                      ),
                    ),
                    RepositoryProvider<VerifyUserUseCase>(
                      create: (context) => VerifyUserUseCase(
                        context.read<AuthenticationRepository>(),
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
  }
}
