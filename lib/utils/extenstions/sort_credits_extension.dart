part of 'app_extensions.dart';

extension SortCreditsExtension on List<CreditModel> {
  void sortCredits() {
    sort((a, b) => a.name.compareTo(b.name));
  }
}
