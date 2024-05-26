import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

/// A custom serializer for converting between DateTime and Firestore Timestamp.
///
/// This class implements the JsonConverter interface provided by
/// json_annotation package.
/// It is used to serialize DateTime objects to
/// Firestore [Timestamp]s and vice versa.
class TimestampSerializer implements JsonConverter<DateTime, Timestamp> {
  /// Creates an instance of TimestampSerializer.
  const TimestampSerializer();

  /// Converts a Firestore Timestamp to a DateTime object.
  ///
  /// @param timestamp The Firestore Timestamp to convert.
  /// @return A DateTime object representing the same moment
  /// in time as the [Timestamp].
  @override
  DateTime fromJson(Timestamp timestamp) => timestamp.toDate();

  /// Converts a DateTime object to a Firestore Timestamp.
  ///
  /// @param date The DateTime object to convert.
  /// @return A Firestore Timestamp representing the same moment
  /// in time as the [DateTime].
  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}
