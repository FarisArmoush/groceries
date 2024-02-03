import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app_easy_localization.dart';
import 'package:groceries/config/injection/injector.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
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

class App extends StatelessWidget {
  const App({
    required this.flavor,
    super.key,
  });

  final AppFlavor flavor;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => flavor,
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => injector<AuthenticationBloc>(),
                lazy: false,
              ),
              BlocProvider(
                create: (context) => injector<VerifyUserBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<UpdateEmailBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<UpdateDisplayNameBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<RegisterBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<RootNavigationBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<GroceryListsBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<MyTasksBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<RecipesBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<RecipeDetailsBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<OnboardingBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<LoginBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<DeleteListBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<RemoveMemberFromListBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<RegisterBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<UpdateListNameBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<ForgotPasswordBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<DeleteAccountBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<CreateRecipeBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<CreateListBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<CategoryDetailsBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<AddItemsBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<SendCrashReportsCubit>(),
              ),
              BlocProvider(
                create: (context) => injector<ThemeCubit>()..loadTheme(),
              ),
              BlocProvider(
                create: (context) => injector<RemoteConfigBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<UserDataCubit>(),
              ),
              BlocProvider(
                create: (context) => injector<LogoutBloc>(),
              ),
              BlocProvider(
                create: (context) => injector<GroceryListDetailsBloc>(),
              ),
            ],
            child: const AppEasyLocalization(),
          );
        },
      ),
    );
  }
}
