import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('FontFamily', () {
    test('Poppins font family', () {
      expect(FontFamily.poppins, 'Poppins');
    });
  });
}
