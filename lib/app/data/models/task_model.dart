import 'package:equatable/equatable.dart';
import 'package:groceries/app/data/models/grocery_model.dart';
import 'package:groceries/app/data/models/list_model.dart';

class TaskModel extends Equatable {
  const TaskModel({
    this.listModel,
    this.dueDate,
    this.groceries,
    this.groceriesAmount,
  });
  final ListModel? listModel;
  final DateTime? dueDate;
  final List<GroceryModel>? groceries;
  final int? groceriesAmount;

  @override
  List<Object?> get props => [
        listModel,
        dueDate,
        groceries,
        groceriesAmount,
      ];
}
