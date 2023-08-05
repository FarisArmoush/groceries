import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/modules/account_settings/account_settings.dart';
import 'package:groceries/presentation/modules/add_items/add_items.dart';
import 'package:groceries/presentation/modules/additional_resources/additional_resources.dart';
import 'package:groceries/presentation/modules/create_list/create_list.dart';
import 'package:groceries/presentation/modules/create_recipe/create_recipe.dart';
import 'package:groceries/presentation/modules/credits/credits.dart';
import 'package:groceries/presentation/modules/delete_account/delete_account.dart';
import 'package:groceries/presentation/modules/forgot_password/forgot_password.dart';
import 'package:groceries/presentation/modules/grocery_list_details/grocery_list_details.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/grocery_list_settings.dart';
import 'package:groceries/presentation/modules/home/home.dart';
import 'package:groceries/presentation/modules/login/login.dart';
import 'package:groceries/presentation/modules/onboarding/onborading.dart';
import 'package:groceries/presentation/modules/page_not_found/page_not_found.dart';
import 'package:groceries/presentation/modules/recipe_details/recipe_details.dart';
import 'package:groceries/presentation/modules/recipes/recipes.dart';
import 'package:groceries/presentation/modules/register/register.dart';
import 'package:groceries/presentation/modules/root/root.dart';
import 'package:groceries/presentation/modules/settings/settings.dart';
import 'package:groceries/presentation/modules/theme_settings/theme_settings.dart';
import 'package:groceries/presentation/modules/update_display_name/update_display_name.dart';
import 'package:groceries/presentation/modules/update_email/update_email.dart';
import 'package:groceries/presentation/modules/verify_user/verify_user.dart';
import 'package:groceries/presentation/modules/welcome/welcome.dart';
import 'package:groceries/presentation/modules/wrapper/wrapper.dart';

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
