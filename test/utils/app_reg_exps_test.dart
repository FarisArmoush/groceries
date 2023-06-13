import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/app_reg_exps.dart';

void main() {
  group('AppRegExps Group Test', () {
    test('AppRegExps.specialCharacters Test', () {
      expect(
        AppRegExps.specialCharacters.hasMatch(r'!@#$%^&*(),.?":{}|<>_-'),
        isTrue,
      );
      expect(AppRegExps.specialCharacters.hasMatch('abc123'), isFalse);
    });

    test('AppRegExps.englishLetters Test', () {
      expect(AppRegExps.englishLetters.hasMatch('abc'), isTrue);
      expect(AppRegExps.englishLetters.hasMatch('123'), isFalse);
    });

    test('AppRegExps.upperCaseEnglishLetters Test', () {
      expect(AppRegExps.upperCaseEnglishLetters.hasMatch('ABC'), isTrue);
      expect(AppRegExps.upperCaseEnglishLetters.hasMatch('123'), isFalse);
    });

    test('AppRegExps.lowerCaseEnglishLetters Test', () {
      expect(AppRegExps.lowerCaseEnglishLetters.hasMatch('abc'), isTrue);
      expect(AppRegExps.lowerCaseEnglishLetters.hasMatch('123'), isFalse);
    });

    test('AppRegExps.numbers Test', () {
      expect(AppRegExps.numbers.hasMatch('123'), isTrue);
      expect(AppRegExps.numbers.hasMatch('abc'), isFalse);
    });
  });
}
