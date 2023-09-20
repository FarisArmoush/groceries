class AppHelpers {
  static bool isFirstDayOfTheMonth() {
    final now = DateTime.now();
    return now.day == 1;
  }
}
