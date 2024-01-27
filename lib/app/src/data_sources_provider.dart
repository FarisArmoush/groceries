part of '../app.dart';

class DataSourcesProvider extends StatelessWidget {
  const DataSourcesProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Builder(
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
          child: child,
        );
      },
    );
  }
}
