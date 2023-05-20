import 'package:equatable/equatable.dart';
import 'package:groceries/data/models/user_model.dart';

/// {@template grocery_list_model}
/// A model class representing a grocery list.
///
/// This class extends [Equatable] for easy equality comparison
/// and state management.
/// {@endtemplate}
class GroceryListModel extends Equatable {
  /// {@macro grocery_list_model}
  const GroceryListModel({
    required this.uid,
    required this.name,
    required this.imageUrl,
    required this.members,
    required this.tasksAmount,
  });

  /// Constructs a [GroceryListModel] instance from a JSON map.
  factory GroceryListModel.fromJson(Map<String, dynamic> json) {
    return GroceryListModel(
      uid: json['uid'] as int,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      members: (json['members'] as List<dynamic>).map(
        (e) {
          return UserModel.fromJson(e as Map<String, dynamic>);
        },
      ).toList(),
      tasksAmount: json['tasksAmount'] as int,
    );
  }

  /// Converts the [GroceryListModel] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'imageUrl': imageUrl,
      'members': members.map((member) => member.toJson()).toList(),
      'tasksAmount': tasksAmount,
    };
  }

  /// Creates a copy of this [GroceryListModel] instance with
  /// the provided properties.
  GroceryListModel copyWith({
    int? uid,
    String? name,
    String? imageUrl,
    List<UserModel>? members,
    int? tasksAmount,
  }) {
    return GroceryListModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      members: members ?? this.members,
      tasksAmount: tasksAmount ?? this.tasksAmount,
    );
  }

  @override
  String toString() {
    return 'GroceryListModel('
        'uid: $uid, '
        'name: $name, '
        'imageUrl: $imageUrl, '
        'members: $members, '
        'tasksAmount: $tasksAmount'
        ')';
  }

  /// The unique identifier of the grocery list.
  final int uid;

  /// The name of the grocery list.
  final String name;

  /// The URL of the image associated with the grocery list.
  final String imageUrl;

  /// The list of members associated with the grocery list.
  final List<UserModel> members;

  /// The total number of tasks in the grocery list.
  final int tasksAmount;

  @override
  List<Object?> get props => [
        uid,
        name,
        imageUrl,
        members,
        tasksAmount,
      ];
}
