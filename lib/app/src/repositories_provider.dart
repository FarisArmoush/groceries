part of '../app.dart';

class RepositoriesProvider extends StatelessWidget {
  const RepositoriesProvider({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Builder(
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
          child: child,
        );
      },
    );
  }
}
