import 'package:groceries/config/routes/app_route.dart';

/// Extension to provide keys corresponding to different routes in
/// the application.
extension AppRouteKeys on AppRoute {
  /// Returns the key corresponding to the route.
  String get key => switch (this) {
        AppRoute.wrapper => 'K_WRAPPER_VIEW_KEY',
        AppRoute.onboarding => 'K_ONBOARDING_VIEW_KEY',
        AppRoute.welcome => 'K_WELCOME_VIEW_KEY',
        AppRoute.login => 'K_LOGIN_VIEW_KEY',
        AppRoute.register => 'K_REGISTER_VIEW_KEY',
        AppRoute.forgotPassword => 'K_FORGOT_PASSWORD_VIEW_KEY',
        AppRoute.resetPasswordSentSuccessfully =>
          'K_RESET_PASSWORD_SENT_SUCCESSFULLY_VIEW_KEY',
        AppRoute.root => 'K_ROOT_VIEW_KEY',
        AppRoute.home => 'K_HOME_VIEW_KEY',
        AppRoute.recipes => 'K_RECIPES_VIEW_KEY',
        AppRoute.recipeDetails => 'K_RECIPE_DETAILS_VIEW_KEY',
        AppRoute.createRecipe => 'K_CREATE_RECIPE_VIEW_KEY',
        AppRoute.recipeCreatedSuccessfully =>
          'K_RECIPE_CREATED_SUCCESSFULLY_VIEW_KEY',
        AppRoute.recipeCreatedUnsuccessfully =>
          'K_RECIPE_CREATED_UNSUCCESSFULLY_VIEW_KEY',
        AppRoute.addItems => 'K_ADD_ITEMS_VIEW_KEY',
        AppRoute.groceryListDetails => 'K_GROCERY_LIST_DETAILS_VIEW_KEY',
        AppRoute.groceryListSettings => 'K_GROCERY_LIST_SETTINGS_VIEW_KEY',
        AppRoute.createList => 'K_CREATE_LIST_VIEW_KEY',
        AppRoute.listCreatedSuccessfully =>
          'K_LIST_CREATED_SUCCESSFULLY_VIEW_KEY',
        AppRoute.listCreatedUnsuccessfully =>
          'K_LIST_CREATED_UNSUCCESSFULLY_VIEW_KEY',
        AppRoute.settings => 'K_SETTINGS_VIEW_KEY',
        AppRoute.accountSettings => 'K_ACCOUNT_SETTINGS_VIEW_KEY',
        AppRoute.updateDisplayName => 'K_UPDATE_DISPLAY_NAME_VIEW_KEY',
        AppRoute.updateEmail => 'K_UPDATE_EMAIL_VIEW_KEY',
        AppRoute.verifyAccount => 'K_VERIFY_ACCOUNT_VIEW_KEY',
        AppRoute.deleteAccount => 'K_DELETE_ACCOUNT_VIEW_KEY',
        AppRoute.themeSettings => 'K_THEME_SETTINGS_VIEW_KEY',
        AppRoute.pageNotFound => 'K_PAGE_NOT_FOUND_VIEW_KEY',
        AppRoute.premium => 'K_BUY_PREMIUM_VIEW_KEY',
        AppRoute.items => 'K_ITEMS_VIEW_KEY',
        AppRoute.subCategories => 'K_SUB_CATEGORIES_VIEW_KEY',
      };
}
