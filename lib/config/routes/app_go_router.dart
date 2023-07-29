import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/modules/account_settings/views/account_settings_view.dart';
import 'package:groceries/presentation/modules/add_items/views/add_items_view.dart';
import 'package:groceries/presentation/modules/additional_resources/views/additional_resources_view.dart';
import 'package:groceries/presentation/modules/create_list/views/create_list_view.dart';
import 'package:groceries/presentation/modules/create_list/views/invite_users_to_list_view.dart';
import 'package:groceries/presentation/modules/create_list/views/list_created_successfully_view.dart';
import 'package:groceries/presentation/modules/create_list/views/list_created_unsuccessfully_view.dart';
import 'package:groceries/presentation/modules/create_recipe/views/create_recipe_view.dart';
import 'package:groceries/presentation/modules/credits/views/credits_view.dart';
import 'package:groceries/presentation/modules/delete_account/views/delete_account_view.dart';
import 'package:groceries/presentation/modules/forgot_password/views/forgot_password_view.dart';
import 'package:groceries/presentation/modules/forgot_password/views/reset_password_sent_successfully.dart';
import 'package:groceries/presentation/modules/grocery_list_details/views/grocery_list_details_view.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/views/grocery_list_settings_view.dart';
import 'package:groceries/presentation/modules/home/views/home_view.dart';
import 'package:groceries/presentation/modules/login/views/login_view.dart';
import 'package:groceries/presentation/modules/onboarding/views/onboarding_view.dart';
import 'package:groceries/presentation/modules/page_not_found/views/page_not_found_view.dart';
import 'package:groceries/presentation/modules/recipes/views/recipe_details_view.dart';
import 'package:groceries/presentation/modules/recipes/views/recipes_view.dart';
import 'package:groceries/presentation/modules/register/views/register_view.dart';
import 'package:groceries/presentation/modules/root/views/root_view.dart';
import 'package:groceries/presentation/modules/settings/views/settings_view.dart';
import 'package:groceries/presentation/modules/theme_settings/views/theme_settings_view.dart';
import 'package:groceries/presentation/modules/update_display_name/views/update_display_name_view.dart';
import 'package:groceries/presentation/modules/update_email/views/update_email_view.dart';
import 'package:groceries/presentation/modules/verify_user/views/verify_user_view.dart';
import 'package:groceries/presentation/modules/welcome/views/welcome_view.dart';
import 'package:groceries/presentation/modules/wrapper/views/wrapper_view.dart';

/// A class that defines the routes and builders for the App.
class AppGoRouter {
  AppGoRouter._();

  /// The main routes configuration for the AppGoRouter.
  static final GoRouter routes = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        name: AppNamedRoutes.wrapper,
        path: '/',
        builder: (context, state) => const WrapperView(),
      ),
      GoRoute(
        name: AppNamedRoutes.onboarding,
        path: '/onboarding',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        name: AppNamedRoutes.welcome,
        path: '/welcome',
        builder: (context, state) => const WelcomeView(),
        routes: [
          GoRoute(
            name: AppNamedRoutes.login,
            path: 'login',
            builder: (context, state) => const LoginView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.forgotPassword,
                path: 'forgotPassword',
                builder: (context, state) => const ForgotPasswordView(),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.resetPasswordSentSuccessfully,
                    path: 'resetPasswordSentSuccessfully',
                    builder: (context, state) =>
                        const ResetPasswordSentSuccessfullyView(),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            name: AppNamedRoutes.register,
            path: 'register',
            builder: (context, state) => const RegisterView(),
          ),
        ],
      ),
      GoRoute(
        name: AppNamedRoutes.root,
        path: '/root',
        builder: (context, state) => const RootView(),
        routes: [
          GoRoute(
            name: AppNamedRoutes.home,
            path: 'home',
            builder: (context, state) => const HomeView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.createList,
                path: 'createList',
                builder: (context, state) => CreateListView(),
                routes: [
                  GoRoute(
                    path: 'inviteUsersToList',
                    name: AppNamedRoutes.inviteUsersToList,
                    builder: (context, state) => const InviteUsersToListView(),
                  ),
                  GoRoute(
                    path: 'listCreatedSuccessfully',
                    name: AppNamedRoutes.listCreatedSuccessfully,
                    builder: (context, state) =>
                        const ListCreatedSuccessfullyView(),
                  ),
                  GoRoute(
                    path: 'listCreatedUnsuccessfully',
                    name: AppNamedRoutes.listCreatedUnsuccessfully,
                    builder: (context, state) =>
                        const ListCreatedUnsuccessfullyView(),
                  ),
                ],
              ),
              GoRoute(
                name: AppNamedRoutes.groceryListDetails,
                path: 'groceryListDetails',
                pageBuilder: (context, state) => CupertinoPage(
                  child: GroceryListDetailsView(
                    listModel: state.extra! as GroceryListModel,
                  ),
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.addItems,
                    path: 'addItems',
                    pageBuilder: (context, state) => const CupertinoPage(
                      child: AddItemsView(),
                      fullscreenDialog: true,
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.goceryListSettings,
                    path: 'goceryListSettings',
                    builder: (context, state) =>
                        const GroceryListSettingsView(),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            name: AppNamedRoutes.recipes,
            path: 'recipes',
            builder: (context, state) => const RecipesView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.recipeDetails,
                path: 'recipeDetails',
                builder: (context, state) => RecipeDetailsView(
                  recipeModel: state.extra! as RecipeModel,
                ),
              ),
              GoRoute(
                name: AppNamedRoutes.createRecipe,
                path: 'createRecipe',
                builder: (context, state) => const CreateRecipeView(),
              )
            ],
          ),
          GoRoute(
            name: AppNamedRoutes.settings,
            path: 'settings',
            builder: (context, state) => const SettingsView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.themeSettings,
                path: 'themeSettings',
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  child: const ThemeSettingsView(),
                ),
              ),
              GoRoute(
                name: AppNamedRoutes.additionalResources,
                path: 'additionalResources',
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  child: const AdditionalResourcesView(),
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.credits,
                    path: 'credits',
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const CreditsView(),
                    ),
                  ),
                ],
              ),
              GoRoute(
                name: AppNamedRoutes.accountSettings,
                path: 'accountSettings',
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  child: const AccountSettingsView(),
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.deleteAccount,
                    path: 'deleteAccount',
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const DeleteAccountView(),
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.updateDisplayName,
                    path: 'updateUsername',
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const UpdateDisplayNameView(),
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.updateEmail,
                    path: 'updateEmail',
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const UpdateEmailView(),
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.verifyAccount,
                    path: 'verifyAccount',
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const VerifyUserView(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppNamedRoutes.pageNotFound,
        path: '/pageNotFound',
        builder: (context, state) => const PageNotFoundView(),
      ),
    ],
  );
}
