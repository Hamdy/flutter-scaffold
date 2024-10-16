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
    apiKey: 'AIzaSyCrw7ezq8kV7Bg_6kizXadBuSbvyJYtOdE',
    appId: '1:652038857825:web:6d50f14021af5dad2e3620',
    messagingSenderId: '652038857825',
    projectId: 'fitzones',
    authDomain: 'fitzones.firebaseapp.com',
    storageBucket: 'fitzones.appspot.com',
    measurementId: 'G-3VCFLHXJBC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPaX52lROt5hBCz_ct4KnjX2rwWNGujnQ',
    appId: '1:652038857825:android:92515e5d6021233a2e3620',
    messagingSenderId: '652038857825',
    projectId: 'fitzones',
    storageBucket: 'fitzones.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCEj6DD2mi-APDYqs706BWaji4Dbc4x2E',
    appId: '1:652038857825:ios:aadd20112732ea4f2e3620',
    messagingSenderId: '652038857825',
    projectId: 'fitzones',
    storageBucket: 'fitzones.appspot.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDCEj6DD2mi-APDYqs706BWaji4Dbc4x2E',
    appId: '1:652038857825:ios:aadd20112732ea4f2e3620',
    messagingSenderId: '652038857825',
    projectId: 'fitzones',
    storageBucket: 'fitzones.appspot.com',
    iosBundleId: 'com.example.app',
  );

}