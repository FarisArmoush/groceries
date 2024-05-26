import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

/// Extension providing utility methods for parsing and formatting date strings.
extension DateTimeParser on String {
  /// Formats date string to look like `11th of July 2023`.
  /// Returns a formatted date string.
  String toDDofMMYYYY() {
    final dateTime = _parseDateString();

    final day = _getDayWithSuffix(dateTime.day);
    final month = _getMonthName(dateTime.month);
    final year = dateTime.year.toString();

    return '$day of $month $year';
  }

  /// Formats date string to look like `DD-MM-YYYY`.
  /// Returns a formatted date string. 11-7-2023
  String toDDMMYYYY() {
    final inputDateParts = split(' ')[0].split('-');
    final day = inputDateParts[2];
    final month = inputDateParts[1];
    final year = inputDateParts[0];
    return '$day-$month-$year';
  }

  /// Formats date string to look like `DD-MM-YYYY`.
  /// Returns a formatted date string. 11-7-2023
  String toMMDDYYYY() {
    final inputDateParts = split(' ')[0].split('-');
    final day = inputDateParts[2];
    final month = inputDateParts[1];
    final year = inputDateParts[0];
    return '$month-$day-$year';
  }

  /// Parses the string as a date and returns a DateTime object.
  DateTime _parseDateString() {
    final dateParts = split(' ')[0].split('-');

    final year = int.parse(dateParts[0]);
    final month = int.parse(dateParts[1]);
    final day = int.parse(dateParts[2]);

    return DateTime.utc(year, month, day);
  }

  /// Returns the day with suffix (e.g., 1st, 2nd, 3rd, 4th).
  String _getDayWithSuffix(int day) {
    if (day >= 11 && day <= 13) {
      return '${day}th';
    }
    return switch (day % 10) {
      1 => '${day}st'.hardCoded,
      2 => '${day}nd',
      3 => '${day}rd',
      _ => '${day}th',
    };
  }

  /// Returns the name of the month based on the month number.
  String _getMonthName(int month) {
    final months = <String>[
      '', // Index 0 is unused for month names
      'January', 'February', 'March', 'April', 'May', 'June', 'July',
      'August', 'September', 'October', 'November', 'December',
    ];
    return months[month];
  }
}
