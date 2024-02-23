export 'package:groceries/config/routes/app_route_keys.dart';
export 'package:groceries/config/routes/app_route_path.dart';

/// An enum that defines the names of the routes used in the App.
enum AppRoute {
  /// Wrapper View
  wrapper,

  /// Onboarding View
  onboarding,

  /// Welcome View
  welcome,

  /// Login View
  login,

  /// Register View
  register,

  /// Forgot Password View
  forgotPassword,

  /// Reset Password Sent Successfully View
  ///
  /// When the reset password email is sent to user then show him this view.
  resetPasswordSentSuccessfully,

  /// Root View
  root,

  /// Home View
  home,

  /// Recipes View
  recipes,

  /// Recipe View
  recipeDetails,

  /// Create Recipe View
  createRecipe,

  /// Recipe Created Successfully View
  recipeCreatedSuccessfully,

  /// Recipe Created Unsuccessfully View
  recipeCreatedUnsuccessfully,

  /// Add Items to list View
  addItems,

  /// Category Details
  categoryDetails,

  /// Grocery List View
  groceryListDetails,

  /// Grocery List Settings View
  groceryListSettings,

  /// Create View
  createList,

  /// List Created Successfully View
  ///
  /// Use when the list's creation passed
  listCreatedSuccessfully,

  /// List Created Unsuccessfully View
  ///
  /// Use when the list's creation failed
  listCreatedUnsuccessfully,

  /// Settings View
  settings,

  /// Account Settings View
  accountSettings,

  /// Update Display Name View
  updateDisplayName,

  /// Update Email View
  updateEmail,

  /// Verify Account View
  verifyAccount,

  /// Delete Account View
  deleteAccount,

  /// Appearance Settings View
  themeSettings,

  /// Additional Resources View
  additionalResources,

  /// Page Not Found View
  ///
  /// Automatically used when the user goes to a view that doesnt exist
  pageNotFound,
}
