part of '../app_extensions.dart';

/// Extension on the [num] class providing additional comparison methods.
extension NumbersComparisons on num {
  /// Checks if the current [num] is less than
  /// or equal to the specified [value].
  ///
  /// Returns `true` if the current [num] is less than or equal to [value],
  /// otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// num x = 5;
  /// bool result = x.isLessThan(10);
  /// print(result); // Output: true
  /// ```
  bool isLessThan(num value) {
    return this <= value;
  }

  /// Checks if the current [num] is greater
  /// than or equal to the specified [value].
  ///
  /// Returns `true` if the current [num] is greater than or equal to [value],
  /// otherwise returns `false`.
  ///
  /// Example:
  /// ```dart
  /// num x = 15;
  /// bool result = x.isGreaterThan(10);
  /// print(result); // Output: true
  /// ```
  bool isGreaterThan(num value) {
    return this >= value;
  }
}
