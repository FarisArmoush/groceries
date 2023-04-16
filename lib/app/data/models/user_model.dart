import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  const UserModel({
    this.uid,
    this.name,
    this.imageUrl,
    this.email,
    this.isFriend,
  });
  final String? uid;
  final String? name;
  final String? imageUrl;
  final String? email;
  final bool? isFriend;

  static const empty = UserModel(uid: '');

  bool get isEmpty => this == UserModel.empty;

  bool get isNotEmpty => this != UserModel.empty;

  @override
  List<Object?> get props => [
        uid,
        name,
        email,
        imageUrl,
        isFriend,
      ];
}
