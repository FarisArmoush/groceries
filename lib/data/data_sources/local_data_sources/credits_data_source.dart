import 'package:groceries/data/models/credit_model.dart';

class CreditsDataSource {
  List<CreditModel> get stateManagementPackages {
    return [
      CreditModel(name: 'bloc'),
      CreditModel(name: 'bloc_test'),
      CreditModel(name: 'flutter_bloc'),
    ];
  }

  List<CreditModel> get miscPackages {
    return [
      CreditModel(name: 'Lucide'),
    ];
  }

  List<CreditModel> get devPackages {
    return [
      CreditModel(name: 'freezed_annotation'),
      CreditModel(name: 'json_annotation'),
      CreditModel(name: 'build_runner'),
      CreditModel(name: 'very_good_analysis'),
      CreditModel(name: 'json_serializable'),
      CreditModel(name: 'flutter_native_splash'),
      CreditModel(name: 'flutter_gen_runner'),
      CreditModel(name: 'freezed'),
      CreditModel(name: 'shared_preferences'),
      CreditModel(name: 'faker'),
      CreditModel(name: 'equatable'),
    ];
  }

  List<CreditModel> get uiPackages {
    return [
      CreditModel(name: 'easy_localization'),
      CreditModel(name: 'cached_network_image'),
      CreditModel(name: 'cupertino_icons'),
      CreditModel(name: 'email_validator'),
      CreditModel(name: 'flutter_svg'),
      CreditModel(name: 'formz'),
      CreditModel(name: 'go_router'),
      CreditModel(name: 'image_picker'),
      CreditModel(name: 'smooth_page_indicator'),
    ];
  }

  List<CreditModel> get backendPackages {
    return [
      CreditModel(name: 'cloud_firestore'),
      CreditModel(name: 'firebase_auth'),
      CreditModel(name: 'firebase_analytics'),
      CreditModel(name: 'firebase_core'),
      CreditModel(name: 'firebase_crashlytics'),
      CreditModel(name: 'firebase_database'),
      CreditModel(name: 'firebase_performance'),
      CreditModel(name: 'firebase_remote_config'),
      CreditModel(name: 'firebase_storage'),
      CreditModel(name: 'http'),
    ];
  }
}
