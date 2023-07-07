import 'package:equatable/equatable.dart';

/// {@template recipe_model}
/// A model class representing a recipe.
///
/// This class extends [Equatable] for easy equality comparison
/// and state management.
/// {@endtemplate}
class RecipeModel extends Equatable {
  /// {@macro recipe_model}
  const RecipeModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.items,
  });

  /// Constructs a [RecipeModel] instance from a JSON map.
  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    final itemsJson = json['items'] as List<dynamic>;
    final items = itemsJson.map((dynamic item) => item as String).toList();

    return RecipeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      items: items,
    );
  }

  /// Converts the [RecipeModel] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'items': items,
    };
  }

  /// Creates a copy of this [RecipeModel] instance with
  /// the provided properties.
  RecipeModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    List<String>? items,
  }) {
    return RecipeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      items: items ?? this.items,
    );
  }

  @override
  String toString() {
    return 'RecipeModel('
        'id: $id, '
        'name: $name, '
        'imageUrl: $imageUrl, '
        'items: $items, '
        ')';
  }

  /// The unique identifier of the recipe.
  final String id;

  /// The name of the recipe.
  final String name;

  /// The URL of the image associated with the recipe.
  final String imageUrl;

  /// The list of items that make up a recipe.
  final List<String> items;

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        items,
      ];
}
