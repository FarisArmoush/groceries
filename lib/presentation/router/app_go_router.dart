import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/injection/injector.dart';
import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/domain/entities/category/category_entity.dart';
import 'package:groceries/presentation/modules/account_settings/views/account_settings_view.dart';
import 'package:groceries/presentation/modules/add_items/views/add_items_view.dart';
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
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/shared/logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// A variable that defines the routes and builders for the App.
final GoRouter appGoRouter = GoRouter(
  observers: [TalkerRouteObserver(logger)],
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppRoute.wrapper.named,
      path: '/',
      builder: (context, state) => const WrapperView(),
      redirect: (context, state) async {
        final cacheService = injector.get<CacheService>(
          instanceName: 'SharedPreferencesCacheService',
        );
        final hasViewedOnboarding =
            await cacheService.read<bool>('hasViewedOnboarding');
        if (hasViewedOnboarding case null || false) {
          return '/${AppRoute.onboarding.named}';
        }
        return null;
      },
    ),
    GoRoute(
      name: AppRoute.onboarding.named,
      path: '/${AppRoute.onboarding.named}',
      builder: (context, state) => OnboardingView(
        key: Key(AppRoute.onboarding.key),
      ),
    ),
    GoRoute(
      name: AppRoute.welcome.named,
      path: '/${AppRoute.welcome.named}',
      builder: (context, state) => WelcomeView(
        key: Key(AppRoute.welcome.key),
      ),
      routes: [
        GoRoute(
          name: AppRoute.login.named,
          path: AppRoute.login.named,
          builder: (context, state) => LoginView(
            key: Key(AppRoute.login.key),
          ),
          routes: [
            GoRoute(
              name: AppRoute.forgotPassword.named,
              path: AppRoute.forgotPassword.named,
              pageBuilder: (context, state) => _slideUpTransition(
                ForgotPasswordView(
                  key: Key(AppRoute.forgotPassword.key),
                ),
              ),
              routes: [
                GoRoute(
                  name: AppRoute.resetPasswordSentSuccessfully.named,
                  path: AppRoute.resetPasswordSentSuccessfully.named,
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
          name: AppRoute.register.named,
          path: AppRoute.register.named,
          builder: (context, state) => RegisterView(
            key: Key(AppRoute.register.key),
          ),
        ),
      ],
    ),
    GoRoute(
      name: AppRoute.root.named,
      path: '/${AppRoute.root.named}',
      builder: (context, state) => RootView(
        key: Key(AppRoute.root.key),
      ),
      routes: [
        GoRoute(
          name: AppRoute.home.named,
          path: AppRoute.home.named,
          builder: (context, state) => HomeView(
            key: Key(AppRoute.home.key),
          ),
          routes: [
            GoRoute(
              path: AppRoute.premium.named,
              name: AppRoute.premium.named,
              builder: (context, state) => PremiumView(
                key: Key(AppRoute.premium.key),
              ),
            ),
            GoRoute(
              name: AppRoute.createList.named,
              path: AppRoute.createList.named,
              pageBuilder: (context, state) => _slideUpTransition(
                CreateListView(
                  key: Key(AppRoute.createList.key),
                ),
              ),
              routes: [
                GoRoute(
                  path: AppRoute.listCreatedSuccessfully.named,
                  name: AppRoute.listCreatedSuccessfully.named,
                  builder: (context, state) => ListCreatedSuccessfullyView(
                    key: Key(AppRoute.listCreatedSuccessfully.key),
                  ),
                ),
                GoRoute(
                  path: AppRoute.listCreatedUnsuccessfully.named,
                  name: AppRoute.listCreatedUnsuccessfully.named,
                  builder: (context, state) => ListCreatedUnsuccessfullyView(
                    key: Key(AppRoute.listCreatedUnsuccessfully.key),
                  ),
                ),
              ],
            ),
            GoRoute(
              name: AppRoute.groceryListDetails.named,
              path: AppRoute.groceryListDetails.named,
              builder: (context, state) => GroceryListDetailsView(
                key: Key(AppRoute.groceryListDetails.key),
                uid: state.extra as String?,
              ),
              routes: [
                GoRoute(
                  name: AppRoute.addItems.named,
                  path: AppRoute.addItems.named,
                  pageBuilder: (context, state) => _slideUpTransition(
                    AddItemsView(
                      key: Key(AppRoute.addItems.key),
                    ),
                  ),
                  routes: [
                    GoRoute(
                      name: AppRoute.items.named,
                      path: AppRoute.items.named,
                      builder: (context, state) => ItemsView(
                        key: Key(AppRoute.items.key),
                        categoryModel: state.extra! as CategoryEntity,
                      ),
                    ),
                    GoRoute(
                      name: AppRoute.subCategories.named,
                      path: AppRoute.subCategories.named,
                      builder: (context, state) => SubCategoriesView(
                        key: Key(AppRoute.subCategories.key),
                        parentCategoryModel: state.extra! as CategoryEntity,
                      ),
                    ),
                  ],
                ),
                GoRoute(
                  name: AppRoute.groceryListSettings.named,
                  path: AppRoute.groceryListSettings.named,
                  builder: (context, state) => GroceryListSettingsView(
                    key: Key(AppRoute.groceryListSettings.key),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoute.recipes.named,
          path: AppRoute.recipes.named,
          builder: (context, state) => RecipesView(
            key: Key(AppRoute.recipes.key),
          ),
          routes: [
            GoRoute(
              name: AppRoute.recipeDetails.named,
              path: AppRoute.recipeDetails.named,
              builder: (context, state) => RecipeDetailsView(
                key: Key(AppRoute.recipeDetails.key),
                uid: state.extra! as String?,
              ),
            ),
            GoRoute(
              name: AppRoute.createRecipe.named,
              path: AppRoute.createRecipe.named,
              pageBuilder: (context, state) => _slideUpTransition(
                CreateRecipeView(
                  key: Key(AppRoute.createRecipe.key),
                ),
              ),
              routes: [
                GoRoute(
                  name: AppRoute.recipeCreatedSuccessfully.named,
                  path: AppRoute.recipeCreatedSuccessfully.named,
                  builder: (context, state) => RecipeCreatedSuccessfullyView(
                    key: Key(AppRoute.recipeCreatedSuccessfully.key),
                  ),
                ),
                GoRoute(
                  name: AppRoute.recipeCreatedUnsuccessfully.named,
                  path: AppRoute.recipeCreatedUnsuccessfully.named,
                  builder: (context, state) => RecipeCreatedUnsuccessfullyView(
                    key: Key(AppRoute.recipeCreatedUnsuccessfully.key),
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoute.settings.named,
          path: AppRoute.settings.named,
          builder: (context, state) => SettingsView(
            key: Key(AppRoute.settings.key),
          ),
          routes: [
            GoRoute(
              name: AppRoute.themeSettings.named,
              path: AppRoute.themeSettings.named,
              builder: (context, state) => ThemeSettingsView(
                key: Key(AppRoute.themeSettings.key),
              ),
            ),
            GoRoute(
              name: AppRoute.accountSettings.named,
              path: AppRoute.accountSettings.named,
              builder: (context, state) => AccountSettingsView(
                key: Key(AppRoute.accountSettings.key),
              ),
              routes: [
                GoRoute(
                  name: AppRoute.deleteAccount.named,
                  path: AppRoute.deleteAccount.named,
                  pageBuilder: (context, state) => _slideUpTransition(
                    DeleteAccountView(
                      key: Key(AppRoute.deleteAccount.key),
                    ),
                  ),
                ),
                GoRoute(
                  name: AppRoute.updateDisplayName.named,
                  path: AppRoute.updateDisplayName.named,
                  pageBuilder: (context, state) => _slideUpTransition(
                    UpdateDisplayNameView(
                      key: Key(AppRoute.updateDisplayName.key),
                    ),
                  ),
                ),
                GoRoute(
                  name: AppRoute.updateEmail.named,
                  path: AppRoute.updateEmail.named,
                  pageBuilder: (context, state) => _slideUpTransition(
                    UpdateEmailView(
                      key: Key(AppRoute.updateEmail.key),
                    ),
                  ),
                ),
                GoRoute(
                  name: AppRoute.verifyAccount.named,
                  path: AppRoute.verifyAccount.named,
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
      name: AppRoute.pageNotFound.named,
      path: '/${AppRoute.pageNotFound.named}',
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

abstract interface class Redirect {
  FutureOr<String?> call(BuildContext context, GoRouterState state);
}
