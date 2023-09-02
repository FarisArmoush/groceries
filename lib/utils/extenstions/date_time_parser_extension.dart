part of 'app_extensions.dart';

extension DateTimeParser on String {
  /// Formats date string to look like `11th of July 2023`
  String toDDofMMYYYY() {
    final dateTime = _parseDateString();

    final day = _getDayWithSuffix(dateTime.day);
    final month = _getMonthName(dateTime.month);
    final year = dateTime.year.toString();

    return '$day of $month $year';
  }

  String toDDMMYYYY() {
    final inputDateParts = split(' ')[0].split('-');
    final day = inputDateParts[2];
    final month = inputDateParts[1];
    final year = inputDateParts[0];
    return '$day-$month-$year';
  }

  DateTime _parseDateString() {
    final dateParts = split(' ')[0].split('-');

    final year = int.parse(dateParts[0]);
    final month = int.parse(dateParts[1]);
    final day = int.parse(dateParts[2]);

    return DateTime.utc(year, month, day);
  }

  String _getDayWithSuffix(int day) {
    if (day >= 11 && day <= 13) {
      return '${day}th';
    }
    return switch (day % 10) {
      1 => '${day}st',
      2 => '${day}nd',
      3 => '${day}rd',
      _ => '${day}th',
    };
  }

  String _getMonthName(int month) {
    final months = <String>[
      '', // Index 0 is unused for month names
      'January', 'February', 'March', 'April', 'May', 'June', 'July',
      'August', 'September', 'October', 'November', 'December',
    ];
    return months[month];
  }
}
