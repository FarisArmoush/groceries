import 'package:equatable/equatable.dart';

/// {@template grocery_model}
/// A model class representing a grocery item.
///
/// This class extends [Equatable] for easy equality
/// comparison and state management.
/// {@endtemplate}
class GroceryModel extends Equatable {
  /// {@macro grocery_model}
  const GroceryModel({
    required this.id,
    required this.name,
    required this.category,
    required this.notes,
  });

  /// Constructs a [GroceryModel] instance from a JSON map.
  factory GroceryModel.fromJson(Map<String, dynamic> json) {
    return GroceryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      notes: json['notes'] as String,
    );
  }

  /// Converts the [GroceryModel] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'notes': notes,
    };
  }

  /// Creates a copy of this [GroceryModel] instance with the
  /// provided properties.
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

  /// The unique identifier of the grocery item.
  final String id;

  /// The name of the grocery item.
  final String name;

  /// The category of the grocery item.
  final String category;

  /// Additional notes or description about the grocery item.
  final String notes;

  @override
  List<Object?> get props => [id, name, category, notes];
}
