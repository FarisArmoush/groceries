import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    String? id,
    String? name,
    String? email,
    String? imageUrl,
    bool? isVerified,
    DateTime? creationDate,
  }) = _UserEntity;
}

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      imageUrl: imageUrl,
      isVerified: isVerified,
      creationDate: creationDate,
    );
  }
}

extension UserEntityMapper on UserEntity {
  UserModel toModel() {
    return UserModel(
      id: id,
      name: name,
      email: email,
      imageUrl: imageUrl,
      isVerified: isVerified,
      creationDate: creationDate,
    );
  }
}
