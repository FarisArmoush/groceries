part of '../app_extensions.dart';

extension DurationSimplifier on int {
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get microseconds => Duration(microseconds: this);
  Duration get days => Duration(days: this);
  Duration get hours => Duration(hours: this);
}
