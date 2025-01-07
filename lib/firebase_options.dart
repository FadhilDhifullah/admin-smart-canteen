// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAnfz92x5qsr4w93EiV6VGQ9_YXtG9Wx1w',
    appId: '1:1016237980028:web:336f787b97033af00d8cf9',
    messagingSenderId: '1016237980028',
    projectId: 'fasilkom-smart-canteen',
    authDomain: 'fasilkom-smart-canteen.firebaseapp.com',
    storageBucket: 'fasilkom-smart-canteen.firebasestorage.app',
    measurementId: 'G-21KQ9FDLXN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA92xcEK-SKe51k5i6XUtp52nBVfoR9IwE',
    appId: '1:1016237980028:android:9a4e4f9025eb39ab0d8cf9',
    messagingSenderId: '1016237980028',
    projectId: 'fasilkom-smart-canteen',
    storageBucket: 'fasilkom-smart-canteen.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOYHPrGAbLkwWviXm5J8Kzpw-aZupNSTU',
    appId: '1:1016237980028:ios:b4c1936e4d6e0b1a0d8cf9',
    messagingSenderId: '1016237980028',
    projectId: 'fasilkom-smart-canteen',
    storageBucket: 'fasilkom-smart-canteen.firebasestorage.app',
    iosBundleId: 'com.example.smartcanteen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOYHPrGAbLkwWviXm5J8Kzpw-aZupNSTU',
    appId: '1:1016237980028:ios:b4c1936e4d6e0b1a0d8cf9',
    messagingSenderId: '1016237980028',
    projectId: 'fasilkom-smart-canteen',
    storageBucket: 'fasilkom-smart-canteen.firebasestorage.app',
    iosBundleId: 'com.example.smartcanteen',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD5Lvbh1M1485HDr-ojCeMt0Pft6bgWpzE',
    appId: '1:1016237980028:web:8dde0bf08982a9430d8cf9',
    messagingSenderId: '1016237980028',
    projectId: 'fasilkom-smart-canteen',
    authDomain: 'fasilkom-smart-canteen.firebaseapp.com',
    storageBucket: 'fasilkom-smart-canteen.firebasestorage.app',
    measurementId: 'G-GNYYR0FKMY',
  );
}
