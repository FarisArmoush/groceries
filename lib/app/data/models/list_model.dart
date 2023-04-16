import 'package:equatable/equatable.dart';
import 'package:groceries/app/data/models/user_model.dart';

class ListModel extends Equatable {
  const ListModel({
    required this.uid,
    required this.groupName,
    required this.imageUrl,
    this.members,
    this.tasksAmount,
  });
  final int uid;
  final String groupName;
  final String imageUrl;
  final List<UserModel>? members;
  final int? tasksAmount;

  @override
  List<Object?> get props => [
        uid,
        groupName,
        imageUrl,
        members,
        tasksAmount,
      ];
}
