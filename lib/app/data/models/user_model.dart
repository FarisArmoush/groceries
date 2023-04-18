import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  const UserModel({
    this.id,
    this.name,
    this.imageUrl,
    this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      email: json['email'] as String?,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'email': email,
    };
  }

  UserModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? email,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      email: email ?? this.email,
    );
  }

  final String? id;
  final String? name;
  final String? imageUrl;
  final String? email;

  @override
  List<Object?> get props => [id, name, imageUrl, email];
}
