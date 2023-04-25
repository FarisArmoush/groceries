import 'package:equatable/equatable.dart';

class GroceryModel extends Equatable {
  const GroceryModel({
    required this.id,
    required this.name,
    required this.category,
    required this.notes,
  });

  factory GroceryModel.fromJson(Map<String, dynamic> json) {
    return GroceryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      notes: json['notes'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'notes': notes,
    };
  }

  GroceryModel copyWith({
    String? id,
    String? name,
    String? category,
    String? notes,
  }) {
    return GroceryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() {
    return 'GroceryModel('
        'id: $id, '
        'name: $name, '
        'category: $category, '
        'notes: $notes'
        ')';
  }

  final String id;
  final String name;
  final String category;
  final String notes;

  @override
  List<Object?> get props => [id, name, category, notes];
}
