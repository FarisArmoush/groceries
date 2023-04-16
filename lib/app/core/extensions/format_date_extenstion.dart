extension FormatDate on DateTime {
  String format(DateTime inputTime) {
    final d = inputTime;
    final now = DateTime.now();
    final diff = now.difference(d);
    final diffInYear = (diff.inDays / 365).floor();
    final diffInMonth = (diff.inDays / 30).floor();
    final diffInWeeks = (diff.inDays / 7).floor();
    if (diffInYear >= 1) {
      return '$diffInYear years ago';
    } else if (diffInMonth >= 1) {
      return '$diffInMonth months ago';
    } else if (diffInWeeks >= 1) {
      return '$diffInWeeks weeks ago';
    } else if (diff.inDays >= 1) {
      return '${diff.inDays} days ago';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hours ago';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minutes ago';
    } else if (diff.inSeconds >= 3) {
      return '${diff.inSeconds} seconds ago';
    } else {
      return 'now';
    }
  }
}
