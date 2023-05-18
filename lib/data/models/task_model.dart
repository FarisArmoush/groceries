import 'package:equatable/equatable.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model.dart';

/// {@template task_model}
/// A model class representing a task.
///
/// This class extends [Equatable] for easy equality comparison
/// and state management.
/// {@endtemplate}
class TaskModel extends Equatable {
  /// {@macro task_model}
  const TaskModel({
    required this.id,
    required this.listModel,
    required this.dueDate,
    required this.groceries,
    required this.groceriesAmount,
  });

  /// Constructs a [TaskModel] instance from a JSON map.
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

  /// Converts the [TaskModel] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'listModel': listModel.toJson(),
      'dueDate': dueDate.toIso8601String(),
      'groceries': groceries.map((grocery) => grocery.toJson()).toList(),
      'groceriesAmount': groceriesAmount,
    };
  }

  /// Creates a copy of this [TaskModel] instance with
  /// the provided properties.
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

  /// The unique identifier of the task.
  final String id;

  /// The grocery list model associated with the task.
  final GroceryListModel listModel;

  /// The due date of the task.
  final DateTime dueDate;

  /// The list of groceries associated with the task.
  final List<GroceryModel> groceries;

  /// The amount of groceries in the task.
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
