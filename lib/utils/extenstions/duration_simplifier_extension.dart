/// Extension providing utility methods for creating
/// [Duration] objects with simplified syntax.
extension DurationSimplifier on int {
  /// Returns a Duration representing the given number of milliseconds.
  Duration get milliseconds => Duration(milliseconds: this);

  /// Returns a Duration representing the given number of seconds.
  Duration get seconds => Duration(seconds: this);

  /// Returns a Duration representing the given number of minutes.
  Duration get minutes => Duration(minutes: this);

  /// Returns a Duration representing the given number of microseconds.
  Duration get microseconds => Duration(microseconds: this);

  /// Returns a Duration representing the given number of days.
  Duration get days => Duration(days: this);

  /// Returns a Duration representing the given number of hours.
  Duration get hours => Duration(hours: this);
}
