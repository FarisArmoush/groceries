import 'package:groceries/config/routes/app_route.dart';

/// Extension to provide paths for each [AppRoute] enum value.
extension AppRoutePath on AppRoute {
  /// Returns the path corresponding to each route in the application.
  ///
  /// Example:
  /// ```dart
  /// final route = AppRoute.home;
  /// print(route.path); // Outputs: '/home'
  /// ```
  String get path => switch (this) {
        AppRoute.wrapper => '/wrapper',
        AppRoute.onboarding => '/onboarding',
        AppRoute.welcome => '/welcome',
        AppRoute.login => '/login',
        AppRoute.register => '/register',
        AppRoute.forgotPassword => '/forgot_password',
        AppRoute.resetPasswordSentSuccessfully =>
          'reset_password_sent_successfully',
        AppRoute.root => '/root',
        AppRoute.home => '/home',
        AppRoute.recipes => '/recipes',
        AppRoute.recipeDetails => '/recipe_details',
        AppRoute.createRecipe => '/create_recipe',
        AppRoute.recipeCreatedSuccessfully => '/recipe_created_successfully',
        AppRoute.recipeCreatedUnsuccessfully =>
          '/recipe_created_unsuccessfully',
        AppRoute.addItems => '/add_items',
        AppRoute.categoryDetails => '/category_details',
        AppRoute.groceryListDetails => '/grocery_list_details',
        AppRoute.groceryListSettings => '/grocery_list_settings',
        AppRoute.createList => '/create_list',
        AppRoute.listCreatedSuccessfully => '/list_created_successfully',
        AppRoute.listCreatedUnsuccessfully => '/list_created_unsuccessfully',
        AppRoute.settings => '/settings',
        AppRoute.accountSettings => '/account_settings',
        AppRoute.updateDisplayName => '/update_display_name',
        AppRoute.updateEmail => '/update_email',
        AppRoute.verifyAccount => '/verify_account',
        AppRoute.deleteAccount => '/delete_account',
        AppRoute.themeSettings => '/theme_settings',
        AppRoute.additionalResources => '/additional_resources',
        AppRoute.pageNotFound => '/page_not_found',
      };
}
