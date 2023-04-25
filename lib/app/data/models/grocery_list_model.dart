import 'package:equatable/equatable.dart';
import 'package:groceries/app/data/models/user_model.dart';

class GroceryListModel extends Equatable {
  const GroceryListModel({
    required this.uid,
    required this.name,
    required this.imageUrl,
    required this.members,
    required this.tasksAmount,
  });
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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'imageUrl': imageUrl,
      'members': members.map((member) => member.toJson()).toList(),
      'tasksAmount': tasksAmount,
    };
  }

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

  final int uid;
  final String name;
  final String imageUrl;
  final List<UserModel> members;
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
