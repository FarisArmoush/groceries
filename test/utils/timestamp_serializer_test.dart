import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/utils/timestamp_serializer.dart';
import 'package:test/test.dart';

void main() {
  group('TimestampSerializer', () {
    const timestampSerializer = TimestampSerializer();

    test('fromJson should convert Timestamp to DateTime', () {
      // Arrange
      final timestamp = Timestamp.now();

      // Act
      final dateTime = timestampSerializer.fromJson(timestamp);

      // Assert
      expect(dateTime, isA<DateTime>());
    });

    test('toJson should convert DateTime to Timestamp', () {
      // Arrange
      final dateTime = DateTime.now();

      // Act
      final timestamp = timestampSerializer.toJson(dateTime);

      // Assert
      expect(timestamp, isA<Timestamp>());
    });
  });
}
