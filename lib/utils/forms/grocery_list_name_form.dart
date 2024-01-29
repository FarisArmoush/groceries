import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/num_extensions.dart';

class GroceryListNameForm extends FormzInput<String, String> {
  const GroceryListNameForm.pure(super.value) : super.pure();

  const GroceryListNameForm.dirty(super.value) : super.dirty();

  @override
  String? validator(String value) {
    if (value.isEmpty) {
      return AppTranslations.inputValidationMessages.fieldCannotBeEmpty;
    }
    if (value.length.isLessThan(8)) {
      return AppTranslations
          .inputValidationMessages.fieldMustHaveAtLeastEightCharacters;
    }
    return null;
  }
}
