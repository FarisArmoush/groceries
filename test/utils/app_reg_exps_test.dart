import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/app_reg_exps.dart';

void main() {
  group('AppRegExps', () {
    test('specialCharacters should match special characters', () {
      const input = r'!@#$%^&*(),.?":{}|<>_-';

      final result = AppRegExps.specialCharacters.hasMatch(input);

      expect(result, isTrue);
    });

    test('englishLetters should match English letters', () {
      const input = 'AbCdefGhIjKlmNopQrStUvWxYz';

      final result = AppRegExps.englishLetters.hasMatch(input);

      expect(result, isTrue);
    });

    test('upperCaseEnglishLetters should match uppercase English letters', () {
      const input = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

      final result = AppRegExps.upperCaseEnglishLetters.hasMatch(input);

      expect(result, isTrue);
    });

    test('lowerCaseEnglishLetters should match lowercase English letters', () {
      const input = 'abcdefghijklmnopqrstuvwxyz';

      final result = AppRegExps.lowerCaseEnglishLetters.hasMatch(input);

      expect(result, isTrue);
    });

    test('numbers should match numbers', () {
      const input = '0123456789';

      final result = AppRegExps.numbers.hasMatch(input);

      expect(result, isTrue);
    });

    test('emailRegex should match a valid email address', () {
      const input = 'test@example.com';

      final result = AppRegExps.emailRegex.hasMatch(input);

      expect(result, isTrue);
    });
  });
}
