import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/register_param/register_param.dart';

void main() {
  group('RegisterParam', () {
    test('RegisterParam.Equality', () {
      const model1 = RegisterParam(
        email: 'john.doe@example.com',
        password: 'securePassword123',
        displayName: 'John Doe',
      );

      const model2 = RegisterParam(
        email: 'john.doe@example.com',
        password: 'securePassword123',
        displayName: 'John Doe',
      );

      expect(model1, model2);
    });

    test('RegisterParam.copyWith', () {
      const originalModel = RegisterParam(
        email: 'john.doe@example.com',
        password: 'securePassword123',
        displayName: 'John Doe',
      );

      final modifiedModel = originalModel.copyWith(
        password: 'newSecurePassword456',
      );

      expect(modifiedModel.email, originalModel.email);
      expect(modifiedModel.password, 'newSecurePassword456');
      expect(modifiedModel.displayName, originalModel.displayName);
      expect(modifiedModel, isNot(originalModel));
    });
  });
}
