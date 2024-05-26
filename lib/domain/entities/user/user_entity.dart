import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/user/user_model.dart';
import 'package:groceries/domain/helpers/date_time_parser_extension.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? id,
    String? name,
    String? email,
    String? imageUrl,
    bool? isVerified,
    String? creationDate,
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
      creationDate: creationDate.toString().toDDofMMYYYY(),
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
      creationDate: DateTime.tryParse(creationDate ?? ''),
    );
  }
}
