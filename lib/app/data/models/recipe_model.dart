import 'package:equatable/equatable.dart';

class RecipeModel extends Equatable {
  const RecipeModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.items,
  });

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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'items': items,
    };
  }

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

  final String id;
  final String name;
  final String imageUrl;
  final List<String> items;

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        items,
      ];
}
