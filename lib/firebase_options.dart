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
    apiKey: 'AIzaSyCkA50qIZaVwWqcc7i6KepCgPrcA4CCk2U',
    appId: '1:830336815177:web:fb1381cc6067e177e16f98',
    messagingSenderId: '830336815177',
    projectId: 'stroredatabase',
    authDomain: 'stroredatabase.firebaseapp.com',
    storageBucket: 'stroredatabase.appspot.com',
    measurementId: 'G-VQRQV1B2S8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDq7R6oA3SwMVaxTmMByoaKvnM1n77eeKM',
    appId: '1:830336815177:android:59720091956b3d30e16f98',
    messagingSenderId: '830336815177',
    projectId: 'stroredatabase',
    storageBucket: 'stroredatabase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6oojA_HppUAGBLQtdJXnGgedMvh8lyjs',
    appId: '1:830336815177:ios:9fcf3126ba94e598e16f98',
    messagingSenderId: '830336815177',
    projectId: 'stroredatabase',
    storageBucket: 'stroredatabase.appspot.com',
    iosBundleId: 'com.example.realtimeDatabase1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6oojA_HppUAGBLQtdJXnGgedMvh8lyjs',
    appId: '1:830336815177:ios:01cdae93d53818c7e16f98',
    messagingSenderId: '830336815177',
    projectId: 'stroredatabase',
    storageBucket: 'stroredatabase.appspot.com',
    iosBundleId: 'com.example.realtimeDatabase1.RunnerTests',
  );
}
