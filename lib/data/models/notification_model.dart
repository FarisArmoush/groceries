import 'package:equatable/equatable.dart';

/// {@template notification_model}
/// A model class representing a notification.
///
/// This class extends [Equatable] for easy equality comparison
/// and state management.
/// {@endtemplate}
class NotificationModel extends Equatable {
  /// {@macro notification_model}
  const NotificationModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.date,
  });

  /// Constructs a [NotificationModel] instance from a JSON map.
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

  /// Converts the [NotificationModel] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'imageUrl': imageUrl,
      'date': date.toIso8601String(),
    };
  }

  /// Creates a copy of this [NotificationModel] instance with
  /// the provided properties.
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

  @override
  String toString() {
    return 'NotificationModel('
        'id: $id, '
        'title: $title, '
        'subtitle: $subtitle, '
        'imageUrl: $imageUrl, '
        'date: $date'
        ')';
  }

  /// The unique identifier of the notification.
  final String id;

  /// The title of the grocery list.
  final String title;

  /// The subtitle of the notification.
  final String subtitle;

  /// The URL of the image associated with the notification.
  final String imageUrl;

  /// The date of the notification.
  final DateTime date;

  @override
  List<Object?> get props => [id, title, subtitle, imageUrl, date];
}
