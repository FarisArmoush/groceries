part of '../data_sources.dart';

class CreditsDataSource {
  List<CreditModel> get stateManagementPackages {
    return [
      const CreditModel(name: 'bloc'),
      const CreditModel(name: 'bloc_test'),
      const CreditModel(name: 'flutter_bloc'),
    ].._sortCredits();
  }

  List<CreditModel> get miscPackages {
    return [
      const CreditModel(name: 'Lucide'),
    ].._sortCredits();
  }

  List<CreditModel> get devPackages {
    return [
      const CreditModel(name: 'freezed_annotation'),
      const CreditModel(name: 'json_annotation'),
      const CreditModel(name: 'build_runner'),
      const CreditModel(name: 'very_good_analysis'),
      const CreditModel(name: 'json_serializable'),
      const CreditModel(name: 'flutter_native_splash'),
      const CreditModel(name: 'flutter_gen_runner'),
      const CreditModel(name: 'freezed'),
      const CreditModel(name: 'shared_preferences'),
      const CreditModel(name: 'equatable'),
    ].._sortCredits();
  }

  List<CreditModel> get uiPackages {
    return [
      const CreditModel(name: 'easy_localization'),
      const CreditModel(name: 'cached_network_image'),
      const CreditModel(name: 'cupertino_icons'),
      const CreditModel(name: 'email_validator'),
      const CreditModel(name: 'flutter_svg'),
      const CreditModel(name: 'formz'),
      const CreditModel(name: 'go_router'),
      const CreditModel(name: 'image_picker'),
      const CreditModel(name: 'smooth_page_indicator'),
      const CreditModel(name: 'shimmer'),
    ].._sortCredits();
  }

  List<CreditModel> get backendPackages {
    return [
      const CreditModel(name: 'firebase_auth'),
      const CreditModel(name: 'cloud_firestore'),
      const CreditModel(name: 'firebase_analytics'),
      const CreditModel(name: 'firebase_core'),
      const CreditModel(name: 'firebase_crashlytics'),
      const CreditModel(name: 'firebase_database'),
      const CreditModel(name: 'firebase_performance'),
      const CreditModel(name: 'firebase_remote_config'),
      const CreditModel(name: 'firebase_storage'),
    ].._sortCredits();
  }
}

extension _SortCredits on List<CreditModel> {
  void _sortCredits() {
    sort((a, b) => a.name.compareTo(b.name));
  }
}
