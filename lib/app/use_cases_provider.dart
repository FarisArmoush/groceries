import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/domain/repositories/repositories.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';

class UseCasesProvider extends StatelessWidget {
  const UseCasesProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Builder(
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
              create: (context) => LoginWithEmailAndPasswordUseCase(
                context.read<AuthenticationRepository>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => LogoutUseCase(
                context.read<AuthenticationRepository>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => RegisterWithEmailAndPasswordUseCase(
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
          child: child,
        );
      },
    );
  }
}
