part of '../app_extensions.dart';

/// Extension to parse and format date strings.
extension DateTimeParser on String {
  /// Formats date string to a human-readable format like `11th of July 2023`.
  ///
  /// Returns a formatted string representation of the date.
  String toDDofMMYYYY() {
    final dateTime = _parseDateString();

    final day = _getDayWithSuffix(dateTime.day);
    final month = _getMonthName(dateTime.month);
    final year = dateTime.year.toString();

    return '$day of $month $year';
  }

  /// Formats date string to a numeric format like `11-07-2023`.
  ///
  /// Returns a formatted string representation of the date.
  String toDDMMYYYY() {
    final inputDateParts = split(' ')[0].split('-');
    final day = inputDateParts[2];
    final month = inputDateParts[1];
    final year = inputDateParts[0];
    return '$day-$month-$year';
  }

  /// Parses the date string into a [DateTime] object.
  ///
  /// Returns the parsed [DateTime] object.
  DateTime _parseDateString() {
    final dateParts = split(' ')[0].split('-');

    final year = int.parse(dateParts[0]);
    final month = int.parse(dateParts[1]);
    final day = int.parse(dateParts[2]);

    return DateTime.utc(year, month, day);
  }

  /// Adds the appropriate suffix to the day.
  ///
  /// Returns a string representation of the day with the appropriate suffix.
  String _getDayWithSuffix(int day) {
    if (day.isGreaterThan(11) && day.isLessThan(13)) {
      return '${day}th';
    }
    return switch (day % 10) {
      1 => '${day}st',
      2 => '${day}nd',
      3 => '${day}rd',
      _ => '${day}th',
    };
  }

  /// Gets the month name based on the month index.
  ///
  /// Returns the name of the month.
  String _getMonthName(int month) {
    final months = <String>[
      '', // Index 0 is unused for month names
      'January', 'February', 'March', 'April', 'May', 'June', 'July',
      'August', 'September', 'October', 'November', 'December',
    ];
    return months[month];
  }
}
