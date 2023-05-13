import 'package:equatable/equatable.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model.dart';

class TaskModel extends Equatable {
  const TaskModel({
    required this.id,
    required this.listModel,
    required this.dueDate,
    required this.groceries,
    required this.groceriesAmount,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'] as String,
      listModel:
          GroceryListModel.fromJson(json['listModel'] as Map<String, dynamic>),
      dueDate: DateTime.parse(json['dueDate'] as String),
      groceries: (json['groceries'] as List<dynamic>)
          .map(
            (grocery) => GroceryModel.fromJson(grocery as Map<String, dynamic>),
          )
          .toList(),
      groceriesAmount: json['groceriesAmount'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'listModel': listModel.toJson(),
      'dueDate': dueDate.toIso8601String(),
      'groceries': groceries.map((grocery) => grocery.toJson()).toList(),
      'groceriesAmount': groceriesAmount,
    };
  }

  TaskModel copyWith({
    String? id,
    GroceryListModel? listModel,
    DateTime? dueDate,
    List<GroceryModel>? groceries,
    int? groceriesAmount,
  }) {
    return TaskModel(
      id: id ?? this.id,
      listModel: listModel ?? this.listModel,
      dueDate: dueDate ?? this.dueDate,
      groceries: groceries ?? this.groceries,
      groceriesAmount: groceriesAmount ?? this.groceriesAmount,
    );
  }

  @override
  String toString() {
    return 'TaskModel('
        'id: $id, '
        'listModel: $listModel, '
        'dueDate: $dueDate, '
        'groceries: $groceries, '
        'groceriesAmount: $groceriesAmount, '
        ')';
  }

  final String id;
  final GroceryListModel listModel;
  final DateTime dueDate;
  final List<GroceryModel> groceries;
  final int groceriesAmount;

  @override
  List<Object?> get props => [
        id,
        listModel,
        dueDate,
        groceries,
        groceriesAmount,
      ];
}
