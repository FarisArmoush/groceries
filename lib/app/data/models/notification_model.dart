import 'package:equatable/equatable.dart';

class NotificationModel extends Equatable {
  const NotificationModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.date,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      imageUrl: json['imageUrl'] as String,
      date: DateTime.parse(
        json['date'] as String,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'imageUrl': imageUrl,
      'date': date.toIso8601String(),
    };
  }

  NotificationModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? imageUrl,
    DateTime? date,
  }) {
    return NotificationModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imageUrl: imageUrl ?? this.imageUrl,
      date: date ?? this.date,
    );
  }

  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final DateTime date;

  @override
  List<Object?> get props => [id, title, subtitle, imageUrl, date];
}
