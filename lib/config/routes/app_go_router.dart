import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
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
import 'package:groceries/presentation/modules/items/views/items_view.dart';
import 'package:groceries/presentation/modules/login/views/login_view.dart';
import 'package:groceries/presentation/modules/onboarding/views/onboarding_view.dart';
import 'package:groceries/presentation/modules/page_not_found/views/page_not_found_view.dart';
import 'package:groceries/presentation/modules/premium/views/premium_view.dart';
import 'package:groceries/presentation/modules/recipe_details/views/recipe_details_view.dart';
import 'package:groceries/presentation/modules/recipes/views/recipes_view.dart';
import 'package:groceries/presentation/modules/register/views/register_view.dart';
import 'package:groceries/presentation/modules/root/views/root_view.dart';
import 'package:groceries/presentation/modules/settings/views/settings_view.dart';
import 'package:groceries/presentation/modules/sub_categories/views/sub_categories_view.dart';
import 'package:groceries/presentation/modules/theme_settings/views/theme_settings_view.dart';
import 'package:groceries/presentation/modules/update_display_name/views/update_display_name_view.dart';
import 'package:groceries/presentation/modules/update_email/views/update_email_view.dart';
import 'package:groceries/presentation/modules/verify_user/views/verify_user_view.dart';
import 'package:groceries/presentation/modules/welcome/views/welcome_view.dart';
import 'package:groceries/presentation/modules/wrapper/views/wrapper_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A variable that defines the routes and builders for the App.
final GoRouter appGoRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppRoute.wrapper.name,
      path: '/',
      builder: (context, state) => const WrapperView(),
      redirect: (context, state) async {
        final sharedPreferences = await SharedPreferences.getInstance();
        final hasViewedOnboarding =
            sharedPreferences.getBool('hasViewedOnboarding');
        if (hasViewedOnboarding == false || hasViewedOnboarding == null) {
          return AppRoute.onboarding.path;
        }
        return null;
      },
    ),
    GoRoute(
      name: AppRoute.onboarding.name,
      path: AppRoute.onboarding.path,
      builder: (context, state) => OnboardingView(
        key: Key(AppRoute.onboarding.key),
      ),
    ),
    GoRoute(
      name: AppRoute.welcome.name,
      path: AppRoute.welcome.path,
      builder: (context, state) => WelcomeView(
        key: Key(AppRoute.welcome.key),
      ),
      routes: [
        GoRoute(
          name: AppRoute.login.name,
          path: AppRoute.login.name,
          builder: (context, state) => LoginView(
            key: Key(AppRoute.login.key),
          ),
          routes: [
            GoRoute(
              name: AppRoute.forgotPassword.name,
              path: AppRoute.forgotPassword.name,
              pageBuilder: (context, state) => _slideUpTransition(
                ForgotPasswordView(
                  key: Key(AppRoute.forgotPassword.key),
                ),
              ),
              routes: [
                GoRoute(
                  name: AppRoute.resetPasswordSentSuccessfully.name,
                  path: AppRoute.resetPasswordSentSuccessfully.name,
                  builder: (context, state) =>
                      ResetPasswordSentSuccessfullyView(
                    key: Key(AppRoute.resetPasswordSentSuccessfully.key),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoute.register.name,
          path: AppRoute.register.name,
          builder: (context, state) => RegisterView(
            key: Key(AppRoute.register.key),
          ),
        ),
      ],
    ),
    GoRoute(
      name: AppRoute.root.name,
      path: AppRoute.root.path,
      builder: (context, state) => RootView(
        key: Key(AppRoute.root.key),
      ),
      routes: [
        GoRoute(
          name: AppRoute.home.name,
          path: AppRoute.home.name,
          builder: (context, state) => HomeView(
            key: Key(AppRoute.home.key),
          ),
          routes: [
            GoRoute(
              path: AppRoute.premium.name,
              name: AppRoute.premium.name,
              builder: (context, state) => PremiumView(
                key: Key(AppRoute.premium.key),
              ),
            ),
            GoRoute(
              name: AppRoute.createList.name,
              path: AppRoute.createList.name,
              pageBuilder: (context, state) => _slideUpTransition(
                CreateListView(
                  key: Key(AppRoute.createList.key),
                ),
              ),
              routes: [
                GoRoute(
                  path: AppRoute.listCreatedSuccessfully.name,
                  name: AppRoute.listCreatedSuccessfully.name,
                  builder: (context, state) => ListCreatedSuccessfullyView(
                    key: Key(AppRoute.listCreatedSuccessfully.key),
                  ),
                ),
                GoRoute(
                  path: AppRoute.listCreatedUnsuccessfully.name,
                  name: AppRoute.listCreatedUnsuccessfully.name,
                  builder: (context, state) => ListCreatedUnsuccessfullyView(
                    key: Key(AppRoute.listCreatedUnsuccessfully.key),
                  ),
                ),
              ],
            ),
            GoRoute(
              name: AppRoute.groceryListDetails.name,
              path: AppRoute.groceryListDetails.name,
              builder: (context, state) => GroceryListDetailsView(
                key: Key(AppRoute.groceryListDetails.key),
                uid: state.extra as String?,
              ),
              routes: [
                GoRoute(
                  name: AppRoute.addItems.name,
                  path: AppRoute.addItems.name,
                  pageBuilder: (context, state) => _slideUpTransition(
                    AddItemsView(
                      key: Key(AppRoute.addItems.key),
                    ),
                  ),
                  routes: [
                    GoRoute(
                      name: AppRoute.items.name,
                      path: AppRoute.items.name,
                      builder: (context, state) => ItemsView(
                        key: Key(AppRoute.items.key),
                        categoryModel: state.extra! as CategoryModel,
                      ),
                    ),
                    GoRoute(
                      name: AppRoute.subCategories.name,
                      path: AppRoute.subCategories.name,
                      builder: (context, state) => SubCategoriesView(
                        key: Key(AppRoute.subCategories.key),
                        parentCategoryModel: state.extra! as CategoryModel,
                      ),
                    ),
                    GoRoute(
                      name: AppRoute.categoryDetails.name,
                      path: AppRoute.categoryDetails.name,
                      builder: (context, state) => CategoryDetailsView(
                        key: Key(AppRoute.categoryDetails.key),
                        parentCategoryModel: state.extra! as CategoryModel,
                      ),
                    ),
                  ],
                ),
                GoRoute(
                  name: AppRoute.groceryListSettings.name,
                  path: AppRoute.groceryListSettings.name,
                  builder: (context, state) => GroceryListSettingsView(
                    key: Key(AppRoute.groceryListSettings.key),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoute.recipes.name,
          path: AppRoute.recipes.name,
          builder: (context, state) => RecipesView(
            key: Key(AppRoute.recipes.key),
          ),
          routes: [
            GoRoute(
              name: AppRoute.recipeDetails.name,
              path: AppRoute.recipeDetails.name,
              builder: (context, state) => RecipeDetailsView(
                key: Key(AppRoute.recipeDetails.key),
                uid: state.extra! as String?,
              ),
            ),
            GoRoute(
              name: AppRoute.createRecipe.name,
              path: AppRoute.createRecipe.name,
              pageBuilder: (context, state) => _slideUpTransition(
                CreateRecipeView(
                  key: Key(AppRoute.createRecipe.key),
                ),
              ),
              routes: [
                GoRoute(
                  name: AppRoute.recipeCreatedSuccessfully.name,
                  path: AppRoute.recipeCreatedSuccessfully.name,
                  builder: (context, state) => RecipeCreatedSuccessfullyView(
                    key: Key(AppRoute.recipeCreatedSuccessfully.key),
                  ),
                ),
                GoRoute(
                  name: AppRoute.recipeCreatedUnsuccessfully.name,
                  path: AppRoute.recipeCreatedUnsuccessfully.name,
                  builder: (context, state) => RecipeCreatedUnsuccessfullyView(
                    key: Key(AppRoute.recipeCreatedUnsuccessfully.key),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoute.settings.name,
          path: AppRoute.settings.name,
          builder: (context, state) => SettingsView(
            key: Key(AppRoute.settings.key),
          ),
          routes: [
            GoRoute(
              name: AppRoute.themeSettings.name,
              path: AppRoute.themeSettings.name,
              builder: (context, state) => ThemeSettingsView(
                key: Key(AppRoute.themeSettings.key),
              ),
            ),
            GoRoute(
              name: AppRoute.additionalResources.name,
              path: AppRoute.additionalResources.name,
              builder: (context, state) => AdditionalResourcesView(
                key: Key(AppRoute.additionalResources.key),
              ),
            ),
            GoRoute(
              name: AppRoute.accountSettings.name,
              path: AppRoute.accountSettings.name,
              builder: (context, state) => AccountSettingsView(
                key: Key(AppRoute.accountSettings.key),
              ),
              routes: [
                GoRoute(
                  name: AppRoute.deleteAccount.name,
                  path: AppRoute.deleteAccount.name,
                  pageBuilder: (context, state) => _slideUpTransition(
                    DeleteAccountView(
                      key: Key(AppRoute.deleteAccount.key),
                    ),
                  ),
                ),
                GoRoute(
                  name: AppRoute.updateDisplayName.name,
                  path: AppRoute.updateDisplayName.name,
                  pageBuilder: (context, state) => _slideUpTransition(
                    UpdateDisplayNameView(
                      key: Key(AppRoute.updateDisplayName.key),
                    ),
                  ),
                ),
                GoRoute(
                  name: AppRoute.updateEmail.name,
                  path: AppRoute.updateEmail.name,
                  pageBuilder: (context, state) => _slideUpTransition(
                    UpdateEmailView(
                      key: Key(AppRoute.updateEmail.key),
                    ),
                  ),
                ),
                GoRoute(
                  name: AppRoute.verifyAccount.name,
                  path: AppRoute.verifyAccount.name,
                  pageBuilder: (context, state) => _slideUpTransition(
                    VerifyUserView(
                      key: Key(AppRoute.verifyAccount.key),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      name: AppRoute.pageNotFound.name,
      path: AppRoute.pageNotFound.path,
      builder: (context, state) => PageNotFoundView(
        key: Key(AppRoute.pageNotFound.key),
      ),
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
