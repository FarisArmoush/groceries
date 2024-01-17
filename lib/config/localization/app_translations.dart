import 'package:easy_localization/easy_localization.dart';

part 'strings/account_settings_keys.dart';
part 'strings/add_items_keys.dart';
part 'strings/additional_resources_keys.dart';
part 'strings/create_grocery_list_keys.dart';
part 'strings/create_recipe_keys.dart';
part 'strings/delete_account_keys.dart';
part 'strings/error_messages_keys.dart';
part 'strings/forgot_password_keys.dart';
part 'strings/general_keys.dart';
part 'strings/grocery_list_settings_keys.dart';
part 'strings/grocery_lists_keys.dart';
part 'strings/home_keys.dart';
part 'strings/input_validation_messages_keys.dart';
part 'strings/login_keys.dart';
part 'strings/onboarding_keys.dart';
part 'strings/recipes_keys.dart';
part 'strings/register_keys.dart';
part 'strings/settings_keys.dart';
part 'strings/theme_keys.dart';
part 'strings/verify_account_keys.dart';
part 'strings/welcome_keys.dart';

/// This class provides translations for all app strings.
abstract final class AppTranslations {
  static GeneralKeys general = GeneralKeys();

  static OnboardingKeys onboarding = OnboardingKeys();

  static WelcomeKeys welcome = WelcomeKeys();

  static LoginKeys login = LoginKeys();

  static RegisterKeys register = RegisterKeys();

  static ForgotPasswordKeys forgotPassword = ForgotPasswordKeys();

  static HomeKeys home = HomeKeys();

  static GroceryListsKeys groceryLists = GroceryListsKeys();

  static AddItemsKeys addItems = AddItemsKeys();

  static GroceryListSettingsKeys groceryListSettings =
      GroceryListSettingsKeys();

  static RecipesKeys recipes = RecipesKeys();

  static CreateRecipeKeys createRecipe = CreateRecipeKeys();

  static CreateGroceryListKeys createGroceryList = CreateGroceryListKeys();

  static SettingsKeys settings = SettingsKeys();

  static ThemeKeys theme = ThemeKeys();

  static AdditionalResourcesKeys additionalResources =
      AdditionalResourcesKeys();

  static AccountSettingsKeys accountSettings = AccountSettingsKeys();

  static VerifyAccountKeys verifyAccount = VerifyAccountKeys();

  static DeleteAccountKeys deleteAccount = DeleteAccountKeys();

  static InputValidationMessagesKeys inputValidationMessages =
      InputValidationMessagesKeys();

  static ErrorMessagesKeys errorMessages = ErrorMessagesKeys();
}
