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
import 'package:groceries/presentation/modules/onboarding/onboarding.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

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
        redirect: (context, state) async {
          final sharedPreferences = await SharedPreferences.getInstance();

          final hasViewedOnboarding =
              sharedPreferences.getBool('hasViewedOnboarding');
          if (hasViewedOnboarding == false || hasViewedOnboarding == null) {
            return '/${AppNamedRoutes.onboarding}';
          }
          return null;
        },
      ),
      GoRoute(
        name: AppNamedRoutes.onboarding,
        path: '/${AppNamedRoutes.onboarding}',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const OnboardingView(),
        ),
      ),
      GoRoute(
        name: AppNamedRoutes.welcome,
        path: '/${AppNamedRoutes.welcome}',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const WelcomeView(),
        ),
        routes: [
          GoRoute(
            name: AppNamedRoutes.login,
            path: AppNamedRoutes.login,
            pageBuilder: (context, state) => CupertinoPage(
              key: state.pageKey,
              child: const LoginView(),
            ),
            routes: [
              GoRoute(
                name: AppNamedRoutes.forgotPassword,
                path: AppNamedRoutes.forgotPassword,
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  child: const ForgotPasswordView(),
                  fullscreenDialog: true,
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.resetPasswordSentSuccessfully,
                    path: AppNamedRoutes.resetPasswordSentSuccessfully,
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      child: const ResetPasswordSentSuccessfullyView(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            name: AppNamedRoutes.register,
            path: AppNamedRoutes.register,
            pageBuilder: (context, state) => CupertinoPage(
              key: state.pageKey,
              child: const RegisterView(),
            ),
          ),
        ],
      ),
      GoRoute(
        name: AppNamedRoutes.root,
        path: '/${AppNamedRoutes.root}',
        builder: (context, state) => const RootView(),
        routes: [
          GoRoute(
            name: AppNamedRoutes.home,
            path: AppNamedRoutes.home,
            builder: (context, state) => const HomeView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.createList,
                path: AppNamedRoutes.createList,
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  fullscreenDialog: true,
                  child: const CreateListView(),
                ),
                routes: [
                  GoRoute(
                    path: AppNamedRoutes.listCreatedSuccessfully,
                    name: AppNamedRoutes.listCreatedSuccessfully,
                    builder: (context, state) =>
                        const ListCreatedSuccessfullyView(),
                  ),
                  GoRoute(
                    path: AppNamedRoutes.listCreatedUnsuccessfully,
                    name: AppNamedRoutes.listCreatedUnsuccessfully,
                    builder: (context, state) =>
                        const ListCreatedUnsuccessfullyView(),
                  ),
                ],
              ),
              GoRoute(
                name: AppNamedRoutes.groceryListDetails,
                path: AppNamedRoutes.groceryListDetails,
                pageBuilder: (context, state) => CupertinoPage(
                  child: GroceryListDetailsView(
                    listModel: state.extra! as GroceryListModel,
                  ),
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.addItems,
                    path: AppNamedRoutes.addItems,
                    pageBuilder: (context, state) => const CupertinoPage(
                      child: AddItemsView(),
                      fullscreenDialog: true,
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.goceryListSettings,
                    path: AppNamedRoutes.goceryListSettings,
                    pageBuilder: (context, state) => const CupertinoPage(
                      child: GroceryListSettingsView(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            name: AppNamedRoutes.recipes,
            path: AppNamedRoutes.recipes,
            builder: (context, state) => const RecipesView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.recipeDetails,
                path: AppNamedRoutes.recipeDetails,
                pageBuilder: (context, state) => CupertinoPage(
                  fullscreenDialog: true,
                  child: RecipeDetailsView(
                    recipeModel: state.extra! as RecipeModel,
                  ),
                ),
              ),
              GoRoute(
                name: AppNamedRoutes.createRecipe,
                path: AppNamedRoutes.createRecipe,
                pageBuilder: (context, state) => const CupertinoPage(
                  child: CreateRecipeView(),
                  fullscreenDialog: true,
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.recipeCreatedSuccessfully,
                    path: AppNamedRoutes.recipeCreatedSuccessfully,
                    builder: (context, state) =>
                        const RecipeCreatedSuccessfullyView(),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.recipeCreatedUnsuccessfully,
                    path: AppNamedRoutes.recipeCreatedUnsuccessfully,
                    builder: (context, state) =>
                        const RecipeCreatedUnsuccessfullyView(),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            name: AppNamedRoutes.settings,
            path: AppNamedRoutes.settings,
            builder: (context, state) => const SettingsView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.themeSettings,
                path: AppNamedRoutes.themeSettings,
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  child: const ThemeSettingsView(),
                ),
              ),
              GoRoute(
                name: AppNamedRoutes.additionalResources,
                path: AppNamedRoutes.additionalResources,
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  child: const AdditionalResourcesView(),
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.credits,
                    path: AppNamedRoutes.credits,
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
                path: AppNamedRoutes.accountSettings,
                pageBuilder: (context, state) => CupertinoPage(
                  key: state.pageKey,
                  child: const AccountSettingsView(),
                ),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.deleteAccount,
                    path: AppNamedRoutes.deleteAccount,
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const DeleteAccountView(),
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.updateDisplayName,
                    path: AppNamedRoutes.updateDisplayName,
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const UpdateDisplayNameView(),
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.updateEmail,
                    path: AppNamedRoutes.updateEmail,
                    pageBuilder: (context, state) => CupertinoPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const UpdateEmailView(),
                    ),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.verifyAccount,
                    path: AppNamedRoutes.verifyAccount,
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
        path: '/${AppNamedRoutes.pageNotFound}',
        builder: (context, state) => const PageNotFoundView(),
      ),
    ],
  );
}
