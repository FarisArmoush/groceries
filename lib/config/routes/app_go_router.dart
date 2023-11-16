import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/modules/account_settings/account_settings.dart';
import 'package:groceries/presentation/modules/add_items/add_items.dart';
import 'package:groceries/presentation/modules/additional_resources/additional_resources.dart';
import 'package:groceries/presentation/modules/category_details/category_details.dart';
import 'package:groceries/presentation/modules/create_list/create_list.dart';
import 'package:groceries/presentation/modules/create_recipe/create_recipe.dart';
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
      path: '/${AppNamedRoutes.onboarding}',
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      name: AppNamedRoutes.welcome,
      path: '/${AppNamedRoutes.welcome}',
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
                  name: AppNamedRoutes.goceryListSettings,
                  path: AppNamedRoutes.goceryListSettings,
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
      path: '/${AppNamedRoutes.pageNotFound}',
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
