import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/data_sources/authentication_data_source.dart';
import 'package:groceries/data/data_sources/base_groceries_data_source.dart';
import 'package:groceries/data/data_sources/categories_data_source.dart';
import 'package:groceries/data/data_sources/grocery_lists_data_source.dart';
import 'package:groceries/data/data_sources/my_tasks_data_source.dart';
import 'package:groceries/data/data_sources/recipes_data_source.dart';
import 'package:groceries/data/data_sources/remote_config_data_source.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';
import 'package:groceries/data/repositories/base_groceries_repository_impl.dart';
import 'package:groceries/data/repositories/categories_repository_impl.dart';
import 'package:groceries/data/repositories/grocery_lists_repository_impl.dart';
import 'package:groceries/data/repositories/my_tasks_repository_impl.dart';
import 'package:groceries/data/repositories/recipes_repository_impl.dart';
import 'package:groceries/data/repositories/remote_config_repository_impl.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';
import 'package:groceries/domain/repositories/remote_config_repository.dart';

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
