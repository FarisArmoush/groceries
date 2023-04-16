class GroceryModel {
  GroceryModel({this.uid, this.name, this.category, this.notes});

  GroceryModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'] as int;
    name = json['name'] as String;
    category = json['category'] as String;
    notes = json['notes'] as String;
  }
  int? uid;
  String? name;
  String? category;
  String? notes;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['name'] = name;
    data['category'] = category;
    data['notes'] = notes;
    return data;
  }
}
