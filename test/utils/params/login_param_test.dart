import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/login_param/login_param.dart';

void main() {
  group('LoginParam', () {
    test('LoginParam.Equality', () {
      const model1 = LoginParam(
        email: 'john.doe@example.com',
        password: 'securePassword123',
      );

      const model2 = LoginParam(
        email: 'john.doe@example.com',
        password: 'securePassword123',
      );

      expect(model1, model2);
    });

    test('LoginParam.copyWith', () {
      const originalModel = LoginParam(
        email: 'john.doe@example.com',
        password: 'securePassword123',
      );

      final modifiedModel = originalModel.copyWith(
        password: 'newSecurePassword456',
      );

      expect(modifiedModel.email, originalModel.email);
      expect(modifiedModel.password, 'newSecurePassword456');
      expect(modifiedModel, isNot(originalModel));
    });
  });
}
