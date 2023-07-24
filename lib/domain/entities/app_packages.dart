// ignore_for_file: cascade_invocations

class AppPackages {
  List<AppPackage> fetchAppPackages() {
    final packages = <AppPackage>[
      AppPackage('Bloc'),
      AppPackage('Bloc Test'),
      AppPackage('Build Runner'),
      AppPackage('Cached Network Image'),
      AppPackage('Cloud Firestore'),
      AppPackage('Cupertino Icons'),
      AppPackage('Easy Localization'),
      AppPackage('Email Validator'),
      AppPackage('Equatable'),
      AppPackage('Salomon Bottom Bar'),
      AppPackage('Faker'),
      AppPackage('Firebase Auth'),
      AppPackage('Firebase Analytics'),
      AppPackage('Firebase Core'),
      AppPackage('Firebase Crashlytics'),
      AppPackage('Firebase Database'),
      AppPackage('Firebase Performance'),
      AppPackage('Firebase Remote Config'),
      AppPackage('Firebase Storage'),
      AppPackage('Flutter Bloc'),
      AppPackage('Flutter Staggered Animations'),
      AppPackage('Flutter SVG'),
      AppPackage('Formz'),
      AppPackage('Go Router'),
      AppPackage('HTTP'),
      AppPackage('Image Picker'),
      AppPackage('Shared Preferences'),
      AppPackage('Smooth Page Indicator'),
      AppPackage('URL Launcher'),
      AppPackage('Flutter Native Splash'),
      AppPackage('Very Good Analysis'),
      AppPackage('Json Serializable'),
      AppPackage('Flutter Gen Runner'),
      AppPackage('Flutter Animate'),
      AppPackage('Freezed Annotation'),
      AppPackage('Json Annotation'),
      AppPackage('Freezed'),
    ];
    packages.sort((a, b) => a.name.compareTo(b.name));
    return packages;
  }
}

class AppPackage {
  AppPackage(this.name);

  final String name;
}
