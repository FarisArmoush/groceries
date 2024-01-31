import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';
import 'package:groceries/domain/repositories/remote_config_repository.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/delete_account_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_data_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/login_with_email_and_password_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/logout_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/register_with_email_and_password_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/send_password_reset_email_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_display_name_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_email_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/verify_user_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/create_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/create_recipe_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/delete_grocery_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_category_items_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_parent_categories_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_sub_categories_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/grocery_lists_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/my_tasks_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/recipes_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remote_config_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remove_member_from_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_image_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_name_use_case.dart';

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
                context.read<GroceryListDetailsRepository>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => RemoveMemberFromListUseCase(
                context.read<GroceryListDetailsRepository>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => UpdateListImageUseCase(
                context.read<GroceryListDetailsRepository>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => UpdateListNameUseCase(
                context.read<GroceryListDetailsRepository>(),
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
