class AppPackages {
  List<AppPackage> getAllPackages = [
    AppPackage('Bloc'),
    AppPackage('Cached Network Image'),
    AppPackage('Cloud Firestore'),
    AppPackage('Cupertino Icons'),
    AppPackage('Easy Localization'),
    AppPackage('Email Validator'),
    AppPackage('Equatable'),
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
    AppPackage('Google Sign in'),
    AppPackage('HTTP'),
    AppPackage('Image Picker'),
    AppPackage('Shared Preferences'),
    AppPackage('Smooth Page Indicator'),
    AppPackage('URL Launcher'),
    AppPackage('Flutter Native Splash'),
    AppPackage('Build Runner'),
    AppPackage('Bloc Test'),
    AppPackage('Very Good Analysis'),
    AppPackage('Json Serializable'),
    AppPackage('Flutter Gen Runner'),
  ];

  void sortAppPackages() {
    getAllPackages.sort((a, b) => a.name.compareTo(b.name));
  }
}

class AppPackage {
  AppPackage(this.name);

  final String name;
}
