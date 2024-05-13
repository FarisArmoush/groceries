import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/user/user_model.dart';

void main() {
  group('UserModel', () {
    test('UserModel.fromJson', () {
      final json = <String, Object?>{
        'id': '123',
        'name': 'John Doe',
        'email': 'john.doe@example.com',
        'imageUrl': 'https://example.com/avatar.jpg',
        'creationDate': Timestamp.fromDate(DateTime(2022, 01, 11, 12, 34, 56)),
      };

      final userModel = UserModel.fromJson(json);

      expect(userModel.id, '123');
      expect(userModel.name, 'John Doe');
      expect(userModel.email, 'john.doe@example.com');
      expect(userModel.imageUrl, 'https://example.com/avatar.jpg');
      expect(userModel.creationDate, DateTime(2022, 01, 11, 12, 34, 56));
    });

    test('UserModel.toJson', () {
      final userModel = UserModel(
        id: '123',
        name: 'John Doe',
        email: 'john.doe@example.com',
        imageUrl: 'https://example.com/avatar.jpg',
        creationDate: DateTime(2022, 01, 11, 12, 34, 56),
      );
      final json = userModel.toJson();

      expect(json['id'], '123');
      expect(json['name'], 'John Doe');
      expect(json['email'], 'john.doe@example.com');
      expect(json['imageUrl'], 'https://example.com/avatar.jpg');
      expect(
        json['creationDate'],
        Timestamp.fromDate(DateTime(2022, 01, 11, 12, 34, 56)),
      );
    });
  });
  test('UserModel.Equality', () {
    final userModel1 = UserModel(
      id: '123',
      name: 'John Doe',
      email: 'john.doe@example.com',
      imageUrl: 'https://example.com/avatar.jpg',
      creationDate: DateTime.utc(2022, 01, 11, 12, 34, 56),
    );

    final userModel2 = UserModel(
      id: '123',
      name: 'John Doe',
      email: 'john.doe@example.com',
      imageUrl: 'https://example.com/avatar.jpg',
      creationDate: DateTime.utc(2022, 01, 11, 12, 34, 56),
    );

    expect(userModel1, userModel2);
  });
  test('UserModel.copyWith', () {
    final originalUserModel = UserModel(
      id: '123',
      name: 'John Doe',
      email: 'john.doe@example.com',
      imageUrl: 'https://example.com/avatar.jpg',
      creationDate: DateTime.utc(2022, 01, 11, 12, 34, 56),
    );

    final modifiedUserModel = originalUserModel.copyWith(
      name: 'Jane Doe',
      email: 'jane.doe@example.com',
    );

    expect(modifiedUserModel.id, originalUserModel.id);
    expect(modifiedUserModel.name, 'Jane Doe');
    expect(modifiedUserModel.email, 'jane.doe@example.com');
    expect(modifiedUserModel.imageUrl, originalUserModel.imageUrl);
    expect(modifiedUserModel.creationDate, originalUserModel.creationDate);
    expect(modifiedUserModel, isNot(originalUserModel));
  });
}
