import 'package:equatable/equatable.dart';

/// {@template user_model}
/// A model class representing a user.
///
/// This class extends [Equatable] for easy equality comparison
/// and state management.
/// {@endtemplate}
class UserModel extends Equatable {
  /// {@macro user_model}
  const UserModel({
    this.id,
    this.name,
    this.imageUrl,
    this.email,
  });

  /// Constructs a [UserModel] instance from a JSON map.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      email: json['email'] as String?,
    );
  }

  /// Converts the [UserModel] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'email': email,
    };
  }

  /// Creates a copy of this [UserModel] instance with
  /// the provided properties.
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

  @override
  String toString() {
    return 'UserModel('
        'id: $id, '
        'name: $name, '
        'imageUrl: $imageUrl, '
        'email: $email, '
        ')';
  }

  /// The unique identifer of the user.
  final String? id;

  /// The name of the user.
  final String? name;

  /// The URL of the image associated with the user.
  final String? imageUrl;

  /// the email of the user
  final String? email;

  @override
  List<Object?> get props => [id, name, imageUrl, email];
}
