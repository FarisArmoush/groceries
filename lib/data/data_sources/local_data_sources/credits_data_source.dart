import 'package:groceries/data/models/credit_model/credit_model.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class CreditsDataSource {
  List<CreditModel> get stateManagementPackages {
    return [
      const CreditModel(name: 'bloc'),
      const CreditModel(name: 'bloc_test'),
      const CreditModel(name: 'flutter_bloc'),
    ]..sortCredits();
  }

  List<CreditModel> get miscPackages {
    return [
      const CreditModel(name: 'Lucide'),
    ]..sortCredits();
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
    ]..sortCredits();
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
    ]..sortCredits();
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
    ]..sortCredits();
  }
}
