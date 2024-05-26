import 'package:groceries/presentation/router/app_route.dart';

/// Extension to provide keys corresponding to different routes in
/// the application.
extension AppRouteName on AppRoute {
  /// Returns the key corresponding to the route.
  String get named => switch (this) {
        AppRoute.wrapper => 'wrapper',
        AppRoute.onboarding => 'onboarding',
        AppRoute.welcome => 'welcome',
        AppRoute.login => 'login',
        AppRoute.register => 'register',
        AppRoute.forgotPassword => 'forgot-password',
        AppRoute.resetPasswordSentSuccessfully =>
          'reset-password-sent-successfully',
        AppRoute.root => 'root',
        AppRoute.home => 'home',
        AppRoute.recipes => 'recipes',
        AppRoute.recipeDetails => 'recipe-details',
        AppRoute.createRecipe => 'create-recipe',
        AppRoute.recipeCreatedSuccessfully => 'recipe-created-successfully',
        AppRoute.recipeCreatedUnsuccessfully => 'recipe-created-unsuccessfully',
        AppRoute.addItems => 'add-items',
        AppRoute.groceryListDetails => 'grocery-list-details',
        AppRoute.groceryListSettings => 'grocery-list-settings',
        AppRoute.createList => 'create-grocery-list',
        AppRoute.listCreatedSuccessfully => 'list-created-successfully',
        AppRoute.listCreatedUnsuccessfully => 'list-created-unsuccessfully',
        AppRoute.settings => 'settings',
        AppRoute.accountSettings => 'account-settings',
        AppRoute.updateDisplayName => 'update-name',
        AppRoute.updateEmail => 'update-email',
        AppRoute.verifyAccount => 'verify-account',
        AppRoute.deleteAccount => 'delete-account',
        AppRoute.themeSettings => 'theme-settings',
        AppRoute.pageNotFound => 'page-not-found',
        AppRoute.premium => 'buy-premium',
        AppRoute.items => 'items',
        AppRoute.subCategories => 'sub-categories',
      };
}
