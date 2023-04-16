class RecipeModel {
  RecipeModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.items,
  });
  int id;
  String name;
  final String imageUrl;
  List<String> items;
}
