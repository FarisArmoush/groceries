import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app_easy_localization.dart';
import 'package:groceries/domain/repositories/repositories.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/modules/add_items/add_items.dart';
import 'package:groceries/presentation/modules/additional_resources/additional_resources.dart';
import 'package:groceries/presentation/modules/category_details/category_details.dart';
import 'package:groceries/presentation/modules/create_list/create_list.dart';
import 'package:groceries/presentation/modules/create_recipe/create_recipe.dart';
import 'package:groceries/presentation/modules/delete_account/delete_account.dart';
import 'package:groceries/presentation/modules/forgot_password/forgot_password.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/grocery_list_settings.dart';
import 'package:groceries/presentation/modules/login/login.dart';
import 'package:groceries/presentation/modules/onboarding/onboarding.dart';
import 'package:groceries/presentation/modules/recipe_details/recipe_details.dart';
import 'package:groceries/presentation/modules/recipes/recipes.dart';
import 'package:groceries/presentation/modules/register/register.dart';
import 'package:groceries/presentation/modules/root/root.dart';
import 'package:groceries/presentation/modules/theme_settings/theme_settings.dart';
import 'package:groceries/presentation/modules/update_display_name/update_display_name.dart';
import 'package:groceries/presentation/modules/update_email/update_email.dart';
import 'package:groceries/presentation/modules/verify_user/verify_user.dart';
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
          ],
          child: const AppEasyLocalization(),
        );
      },
    );
  }
}
