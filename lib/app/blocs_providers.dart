import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app_easy_localization.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/delete_account_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_data_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/login_with_email_and_password_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/logout_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/register_with_email_and_password_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/send_password_reset_email_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_display_name_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_email_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/verify_user_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/add_item_to_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/clear_grocery_list_items_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/create_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/create_recipe_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/delete_grocery_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_category_items_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_grocery_list_details_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_parent_categories_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_sub_categories_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/grocery_lists_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/my_tasks_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/recipes_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remote_config_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remove_item_from_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remove_member_from_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_image_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_name_use_case.dart';
import 'package:groceries/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/modules/add_items/bloc/add_items_bloc.dart';
import 'package:groceries/presentation/modules/additional_resources/cubit/send_crash_reports_cubit.dart';
import 'package:groceries/presentation/modules/category_details/bloc/category_details_bloc.dart';
import 'package:groceries/presentation/modules/create_list/bloc/create_list_bloc.dart';
import 'package:groceries/presentation/modules/create_recipe/bloc/create_recipe_bloc.dart';
import 'package:groceries/presentation/modules/delete_account/bloc/delete_account_bloc.dart';
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_details/bloc/grocery_list_details_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/blocs/delete_list/delete_list_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/blocs/remove_member_from_list_bloc/remove_member_from_list_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/blocs/update_list_image_bloc/update_list_image_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/blocs/update_list_name_bloc/update_list_name_bloc.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';
import 'package:groceries/presentation/modules/onboarding/bloc/onboarding_bloc.dart';
import 'package:groceries/presentation/modules/recipe_details/bloc/recipe_details_bloc.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/modules/root/bloc/root_navigation_bloc.dart';
import 'package:groceries/presentation/modules/theme_settings/cubit/theme_cubit.dart';
import 'package:groceries/presentation/modules/update_display_name/bloc/update_display_name_bloc.dart';
import 'package:groceries/presentation/modules/update_email/bloc/update_email_bloc.dart';
import 'package:groceries/presentation/modules/verify_user/bloc/verify_user_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BlocsProviders extends StatelessWidget {
  const BlocsProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => VerifyUserBloc(
                context.read<VerifyUserUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateEmailBloc(
                context.read<UpdateEmailUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateDisplayNameBloc(
                context.read<UpdateDisplayNameUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RegisterBloc(
                context.read<RegisterWithEmailAndPasswordUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RootNavigationBloc(),
            ),
            BlocProvider(
              create: (context) => GroceryListsBloc(
                context.read<GroceryListsUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => MyTasksBloc(
                context.read<MyTasksUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RecipesBloc(
                context.read<RecipesUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RecipeDetailsBloc(),
            ),
            BlocProvider(
              create: (context) => OnboardingBloc(
                context.read<SharedPreferences>(),
              ),
            ),
            BlocProvider(
              create: (context) => LoginBloc(
                context.read<LoginWithEmailAndPasswordUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => DeleteListBloc(
                context.read<DeleteGroceryListUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RemoveMemberFromListBloc(
                context.read<RemoveMemberFromListUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateListImageBloc(
                context.read<UpdateListImageUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateListNameBloc(
                context.read<UpdateListNameUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => ForgotPasswordBloc(
                context.read<SendPasswordResetEmailUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => DeleteAccountBloc(
                context.read<DeleteAccountUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => CreateRecipeBloc(
                context.read<CreateRecipeUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => CreateListBloc(
                context.read<CreateListUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => CategoryDetailsBloc(
                context.read<FetchSubCategoriesUseCase>(),
                context.read<FetchCategoryItemsUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => AddItemsBloc(
                context.read<FetchParentCategoriesUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => SendCrashReportsCubit(),
            ),
            BlocProvider(
              create: (context) => AuthenticationBloc(
                context.read<AuthenticationRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => ThemeCubit(
                context.read<SharedPreferences>(),
              )..loadTheme(),
            ),
            BlocProvider(
              create: (context) => RemoteConfigBloc(
                context.read<RemoteConfigUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UserDataCubit(
                context.read<FetchUserDataUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => LogoutBloc(
                context.read<LogoutUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => GroceryListDetailsBloc(
                addItemToListUseCase: context.read<AddItemToListUseCase>(),
                removeItemFromListUseCase:
                    context.read<RemoveItemFromListUseCase>(),
                fetchGroceryListDetailsUseCase:
                    context.read<FetchGroceryListDetailsUseCase>(),
                clearGroceryListItemsUseCase:
                    context.read<ClearGroceryListItemsUseCase>(),
              ),
            ),
          ],
          child: const AppEasyLocalization(),
        );
      },
    );
  }
}
