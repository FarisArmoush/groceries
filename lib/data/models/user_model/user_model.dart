import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/utils/timestamp_serializer.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    String? name,
    String? email,
    String? imageUrl,
    @TimestampSerializer() DateTime? creationDate,
  }) = _UserModel;

  factory UserModel.fromJson(JSON json) => _$UserModelFromJson(json);
}
