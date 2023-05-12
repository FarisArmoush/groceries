// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members, no_default_cases
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHwWZTJUASjvpYEdVJ_ASpM5IA5mxI1kw',
    appId: '1:960305957931:android:b82e5cbc3f002b734eae6e',
    messagingSenderId: '960305957931',
    projectId: 'grocoriesapp',
    databaseURL:
        'https://grocoriesapp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'grocoriesapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAu8OIr4JZmnyFvUDgDKBrmXTgeWG_WHhk',
    appId: '1:960305957931:ios:c6ef830431f83c974eae6e',
    messagingSenderId: '960305957931',
    projectId: 'grocoriesapp',
    databaseURL:
        'https://grocoriesapp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'grocoriesapp.appspot.com',
    iosClientId:
        '960305957931-q5fa19va1imtvnh34ltee42ju5s5c0ud.apps.googleusercontent.com',
    iosBundleId: 'com.example.grocories',
  );
}
