import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/modules/account_settings/views/account_settings_view.dart';
import 'package:groceries/presentation/modules/add_items/views/add_items_view.dart';
import 'package:groceries/presentation/modules/additional_resources/views/additional_resources_view.dart';
import 'package:groceries/presentation/modules/category_details/views/category_details_view.dart';
import 'package:groceries/presentation/modules/create_list/views/create_list_view.dart';
import 'package:groceries/presentation/modules/create_list/views/list_created_successfully_view.dart';
import 'package:groceries/presentation/modules/create_list/views/list_created_unsuccessfully_view.dart';
import 'package:groceries/presentation/modules/create_recipe/views/create_recipe_view.dart';
import 'package:groceries/presentation/modules/create_recipe/views/recipe_created_successfully_view.dart';
import 'package:groceries/presentation/modules/create_recipe/views/recipe_created_unsuccessfully_view.dart';
import 'package:groceries/presentation/modules/delete_account/views/delete_account_view.dart';
import 'package:groceries/presentation/modules/forgot_password/views/forgot_password_view.dart';
import 'package:groceries/presentation/modules/forgot_password/views/reset_password_sent_successfully.dart';
import 'package:groceries/presentation/modules/grocery_list_details/views/grocery_list_details_view.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/views/grocery_list_settings_view.dart';
import 'package:groceries/presentation/modules/home/views/home_view.dart';
import 'package:groceries/presentation/modules/login/views/login_view.dart';
import 'package:groceries/presentation/modules/onboarding/views/onboarding_view.dart';
import 'package:groceries/presentation/modules/page_not_found/views/page_not_found_view.dart';
import 'package:groceries/presentation/modules/recipe_details/views/recipe_details_view.dart';
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
import 'package:groceries/utils/extenstions/route_path_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A variable that defines the routes and builders for the App.
final GoRouter appGoRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppNamedRoutes.wrapper,
      path: '/',
      builder: (context, state) => const WrapperView(),
      redirect: (context, state) async {
        final sharedPreferences = context.read<SharedPreferences>();

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
      path: AppNamedRoutes.onboarding.path(),
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      name: AppNamedRoutes.welcome,
      path: AppNamedRoutes.welcome.path(),
      builder: (context, state) => const WelcomeView(),
      routes: [
        GoRoute(
          name: AppNamedRoutes.login,
          path: AppNamedRoutes.login,
          builder: (context, state) => const LoginView(),
          routes: [
            GoRoute(
              name: AppNamedRoutes.forgotPassword,
              path: AppNamedRoutes.forgotPassword,
              pageBuilder: (context, state) => _slideUpTransition(
                const ForgotPasswordView(),
              ),
              routes: [
                GoRoute(
                  name: AppNamedRoutes.resetPasswordSentSuccessfully,
                  path: AppNamedRoutes.resetPasswordSentSuccessfully,
                  builder: (context, state) =>
                      const ResetPasswordSentSuccessfullyView(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppNamedRoutes.register,
          path: AppNamedRoutes.register,
          builder: (context, state) => const RegisterView(),
        ),
      ],
    ),
    GoRoute(
      name: AppNamedRoutes.root,
      path: AppNamedRoutes.root.path(),
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
              pageBuilder: (context, state) => _slideUpTransition(
                const CreateListView(),
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
              builder: (context, state) => GroceryListDetailsView(
                listModel: state.extra! as GroceryListModel,
              ),
              routes: [
                GoRoute(
                  name: AppNamedRoutes.addItems,
                  path: AppNamedRoutes.addItems,
                  pageBuilder: (context, state) => _slideUpTransition(
                    const AddItemsView(),
                  ),
                  routes: [
                    GoRoute(
                      name: AppNamedRoutes.categoryDetails,
                      path: AppNamedRoutes.categoryDetails,
                      builder: (context, state) => CategoryDetailsView(
                        parentCategoryModel: state.extra! as CategoryModel,
                      ),
                    ),
                  ],
                ),
                GoRoute(
                  name: AppNamedRoutes.groceryListSettings,
                  path: AppNamedRoutes.groceryListSettings,
                  builder: (context, state) => const GroceryListSettingsView(),
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
              builder: (context, state) => RecipeDetailsView(
                recipeModel: state.extra! as RecipeModel,
              ),
            ),
            GoRoute(
              name: AppNamedRoutes.createRecipe,
              path: AppNamedRoutes.createRecipe,
              pageBuilder: (context, state) => _slideUpTransition(
                const CreateRecipeView(),
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
              builder: (context, state) => const ThemeSettingsView(),
            ),
            GoRoute(
              name: AppNamedRoutes.additionalResources,
              path: AppNamedRoutes.additionalResources,
              builder: (context, state) => const AdditionalResourcesView(),
            ),
            GoRoute(
              name: AppNamedRoutes.accountSettings,
              path: AppNamedRoutes.accountSettings,
              builder: (context, state) => const AccountSettingsView(),
              routes: [
                GoRoute(
                  name: AppNamedRoutes.deleteAccount,
                  path: AppNamedRoutes.deleteAccount,
                  pageBuilder: (context, state) => _slideUpTransition(
                    const DeleteAccountView(),
                  ),
                ),
                GoRoute(
                  name: AppNamedRoutes.updateDisplayName,
                  path: AppNamedRoutes.updateDisplayName,
                  pageBuilder: (context, state) => _slideUpTransition(
                    const UpdateDisplayNameView(),
                  ),
                ),
                GoRoute(
                  name: AppNamedRoutes.updateEmail,
                  path: AppNamedRoutes.updateEmail,
                  pageBuilder: (context, state) => _slideUpTransition(
                    const UpdateEmailView(),
                  ),
                ),
                GoRoute(
                  name: AppNamedRoutes.verifyAccount,
                  path: AppNamedRoutes.verifyAccount,
                  pageBuilder: (context, state) => _slideUpTransition(
                    const VerifyUserView(),
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
      path: AppNamedRoutes.pageNotFound.path(),
      builder: (context, state) => const PageNotFoundView(),
    ),
  ],
);

CustomTransitionPage<void> _slideUpTransition(Widget child) {
  return CustomTransitionPage<void>(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0, 1);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );
      final offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
