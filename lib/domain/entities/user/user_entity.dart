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

extension UserModelMapper on UserModel? {
  UserEntity? toEntity() {
    if (this == null) return null;
    return UserEntity(
      id: this?.id,
      name: this?.name,
      email: this?.email,
      imageUrl: this?.imageUrl,
      isVerified: this?.isVerified,
      creationDate: this?.creationDate,
    );
  }
}

extension UserEntityMapper on UserEntity? {
  UserModel? toModel() {
    if (this == null) return null;
    return UserModel(
      id: this?.id,
      name: this?.name,
      email: this?.email,
      imageUrl: this?.imageUrl,
      isVerified: this?.isVerified,
      creationDate: this?.creationDate,
    );
  }
}
