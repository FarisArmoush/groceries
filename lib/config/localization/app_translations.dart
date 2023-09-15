// ignore_for_file: library_private_types_in_public_api
import 'package:easy_localization/easy_localization.dart';

part 'strings/__account_settings.dart';
part 'strings/__add_items.dart';
part 'strings/__additional_resources.dart';
part 'strings/__create_grocery_list.dart';
part 'strings/__create_recipe.dart';
part 'strings/__delete_account.dart';
part 'strings/__error_messages.dart';
part 'strings/__forgot_password.dart';
part 'strings/__general.dart';
part 'strings/__grocery_list_settings.dart';
part 'strings/__grocery_lists.dart';
part 'strings/__home.dart';
part 'strings/__input_validation_messages.dart';
part 'strings/__login.dart';
part 'strings/__onboarding.dart';
part 'strings/__recipes.dart';
part 'strings/__register.dart';
part 'strings/__settings.dart';
part 'strings/__theme.dart';
part 'strings/__verify_account.dart';
part 'strings/__welcome.dart';

/// This class provides translations for all app strings.
abstract final class AppTranslations {
  static _General general = _General();

  static _Onboarding onboarding = _Onboarding();

  static _Welcome welcome = _Welcome();

  static _Login login = _Login();

  static __Register register = __Register();

  static __ForgotPassword forgotPassword = __ForgotPassword();

  static _Home home = _Home();

  static _GroceryLists groceryLists = _GroceryLists();

  static _AddItems addItems = _AddItems();

  static _GroceryListSettings groceryListSettings = _GroceryListSettings();

  static _Recipes recipes = _Recipes();

  static _CreateRecipe createRecipe = _CreateRecipe();

  static _CreateGroceryList createGroceryList = _CreateGroceryList();

  static _Settings settings = _Settings();

  static _Theme theme = _Theme();

  static _AdditionalResources additionalResources = _AdditionalResources();

  static _AccountSettings accountSettings = _AccountSettings();

  static _VerifyAccount verifyAccount = _VerifyAccount();

  static _DeleteAccount deleteAccount = _DeleteAccount();

  static _InputValidationMessages inputValidationMessages =
      _InputValidationMessages();

  static _ErrorMessages errorMessages = _ErrorMessages();
}
