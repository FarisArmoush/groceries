/// This class holds `RegExp` variables that are used in this app
abstract class AppRegExps {
  /// Holds a value of all special characters
  ///
  /// * r'[!@#\$%\^&\*(),.?":{}|<>_\-]'
  static final specialCharacters = RegExp(r'[!@#\$%\^&\*(),.?":{}|<>_\-]');

  /// Holds a value of all letters in the english alphabet
  ///
  /// * '[A-Za-z]'
  static final englishLetters = RegExp('[A-Za-z]');

  /// Holds a value of all upper case letters in the english alphabet
  ///
  /// * '[A-Z]'
  static final upperCaseEnglishLetters = RegExp('[A-Z]');

  /// Holds a value of all lower case letters in the english alphabet
  ///
  /// * '[a-z]'
  static final lowerCaseEnglishLetters = RegExp('[a-z]');

  /// Holds a value for all numbers
  ///
  /// * [0-9]
  static final numbers = RegExp('[0-9]');

  /// Holds a value for email
  ///
  /// * [^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$]
  static final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
}
