import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/account_settings/views/account_settings_view.dart';
import 'package:groceries/presentation/modules/add_items/views/add_items_view.dart';
import 'package:groceries/presentation/modules/additional_resources/views/additional_resources_view.dart';
import 'package:groceries/presentation/modules/appearance/views/appearance_settings_view.dart';
import 'package:groceries/presentation/modules/create_list/views/create_list_view.dart';
import 'package:groceries/presentation/modules/create_list/views/invite_users_to_list_view.dart';
import 'package:groceries/presentation/modules/create_list/views/list_created_successfully_view.dart';
import 'package:groceries/presentation/modules/create_list/views/list_created_unsuccessfully_view.dart';
import 'package:groceries/presentation/modules/create_recipe/views/create_recipe_view.dart';
import 'package:groceries/presentation/modules/delete_account/views/delete_account_view.dart';
import 'package:groceries/presentation/modules/forgot_password/views/forgot_password_view.dart';
import 'package:groceries/presentation/modules/forgot_password/views/reset_password_sent_successfully.dart';
import 'package:groceries/presentation/modules/grocery_list/views/grocery_list_view.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/views/grocery_list_settings_view.dart';
import 'package:groceries/presentation/modules/home/views/home_view.dart';
import 'package:groceries/presentation/modules/login/views/login_view.dart';
import 'package:groceries/presentation/modules/notifications/views/notifications_view.dart';
import 'package:groceries/presentation/modules/notifications_settings/views/notifications_settings_view.dart';
import 'package:groceries/presentation/modules/onboarding/views/onboarding_view.dart';
import 'package:groceries/presentation/modules/page_not_found/views/page_not_found_view.dart';
import 'package:groceries/presentation/modules/recipes/views/recipe_view.dart';
import 'package:groceries/presentation/modules/recipes/views/recipes_view.dart';
import 'package:groceries/presentation/modules/register/views/register_view.dart';
import 'package:groceries/presentation/modules/root/views/root_view.dart';
import 'package:groceries/presentation/modules/settings/views/settings_view.dart';
import 'package:groceries/presentation/modules/update_display_name/views/update_display_name_view.dart';
import 'package:groceries/presentation/modules/update_email/views/update_email_view.dart';
import 'package:groceries/presentation/modules/update_password/views/update_password_view.dart';
import 'package:groceries/presentation/modules/welcome/views/welcome_view.dart';
import 'package:groceries/presentation/modules/wrapper/views/wrapper_view.dart';

/// A class that defines the routes and builders for the App.
class AppGoRouter {
  AppGoRouter._();

  /// The main routes configuration for the AppGoRouter.
  static final GoRouter routes = GoRouter(
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
                name: AppNamedRoutes.groceryList,
                path: 'groceryList',
                builder: (context, state) => const GroceryListView(),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.addItems,
                    path: 'addItems',
                    builder: (context, state) => const AddItemsView(),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.goceryListSettings,
                    path: 'goceryListSettings',
                    builder: (context, state) =>
                        const GroceryListSettingsView(),
                  ),
                ],
              ),
              GoRoute(
                name: AppNamedRoutes.notifications,
                path: 'notifications',
                builder: (context, state) => const NotificationsView(),
              ),
            ],
          ),
          GoRoute(
            name: AppNamedRoutes.recipes,
            path: 'recipes',
            builder: (context, state) => const RecipesView(),
            routes: [
              GoRoute(
                name: AppNamedRoutes.recipe,
                path: 'recipe',
                builder: (context, state) => const RecipeView(),
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
                name: AppNamedRoutes.appearanceSettings,
                path: 'appearanceSettings',
                builder: (context, state) => const AppearanceSettingsView(),
              ),
              GoRoute(
                name: AppNamedRoutes.notificationsSettings,
                path: 'notificationsSettings',
                builder: (context, state) => const NotificationsSettingsView(),
              ),
              GoRoute(
                name: AppNamedRoutes.additionalResources,
                path: 'additionalResources',
                builder: (context, state) => const AdditionalResourcesView(),
              ),
              GoRoute(
                name: AppNamedRoutes.accountSettings,
                path: 'accountSettings',
                builder: (context, state) => const AccountSettingsView(),
                routes: [
                  GoRoute(
                    name: AppNamedRoutes.deleteAccount,
                    path: 'deleteAccount',
                    builder: (context, state) => const DeleteAccountView(),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.updateDisplayName,
                    path: 'updateUsername',
                    builder: (context, state) => const UpdateDisplayNameView(),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.updateEmail,
                    path: 'updateEmail',
                    builder: (context, state) => const UpdateEmailView(),
                  ),
                  GoRoute(
                    name: AppNamedRoutes.updatePassword,
                    path: 'updatePassword',
                    builder: (context, state) => const UpdatePasswordView(),
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
