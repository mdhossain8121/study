// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyARHopImT9MnB82742HDEfD5rQsbvxM6q8',
    appId: '1:1061074117075:web:63bf73a462277f97918f26',
    messagingSenderId: '1061074117075',
    projectId: 'study-d8ced',
    authDomain: 'study-d8ced.firebaseapp.com',
    storageBucket: 'study-d8ced.appspot.com',
    measurementId: 'G-J9DMDGD3LB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAb-gCnlnpOzntiVTB3IPWwWNHRoAkwboQ',
    appId: '1:1061074117075:android:d4619d32e03795e9918f26',
    messagingSenderId: '1061074117075',
    projectId: 'study-d8ced',
    storageBucket: 'study-d8ced.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnpBrFHHW1iKRpW1Ywqb-uViIsN3pVzSY',
    appId: '1:1061074117075:ios:53ad3cc643d51045918f26',
    messagingSenderId: '1061074117075',
    projectId: 'study-d8ced',
    storageBucket: 'study-d8ced.appspot.com',
    iosBundleId: 'com.example.study',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnpBrFHHW1iKRpW1Ywqb-uViIsN3pVzSY',
    appId: '1:1061074117075:ios:06de3bbd73a82228918f26',
    messagingSenderId: '1061074117075',
    projectId: 'study-d8ced',
    storageBucket: 'study-d8ced.appspot.com',
    iosBundleId: 'com.example.study.RunnerTests',
  );
}
