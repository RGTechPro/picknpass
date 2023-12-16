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
    apiKey: 'AIzaSyBH-W5U-OdTwhD-53v_t5xIrWHBWXFd_p8',
    appId: '1:1097340043:web:a7d0c3bb42d3d761f8308e',
    messagingSenderId: '1097340043',
    projectId: 'picknpass-11cc5',
    authDomain: 'picknpass-11cc5.firebaseapp.com',
    databaseURL: 'https://picknpass-11cc5-default-rtdb.firebaseio.com',
    storageBucket: 'picknpass-11cc5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAF2Sibbr_ZWLsgzeduugepJ64eYfZz0Io',
    appId: '1:1097340043:android:0646abd4cb472f63f8308e',
    messagingSenderId: '1097340043',
    projectId: 'picknpass-11cc5',
    databaseURL: 'https://picknpass-11cc5-default-rtdb.firebaseio.com',
    storageBucket: 'picknpass-11cc5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbkMa0NlVdKP_txuZi0jVnpVRhGxo9hTo',
    appId: '1:1097340043:ios:916d86cf2efc4075f8308e',
    messagingSenderId: '1097340043',
    projectId: 'picknpass-11cc5',
    databaseURL: 'https://picknpass-11cc5-default-rtdb.firebaseio.com',
    storageBucket: 'picknpass-11cc5.appspot.com',
    iosBundleId: 'com.example.picknpass',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbkMa0NlVdKP_txuZi0jVnpVRhGxo9hTo',
    appId: '1:1097340043:ios:916d86cf2efc4075f8308e',
    messagingSenderId: '1097340043',
    projectId: 'picknpass-11cc5',
    databaseURL: 'https://picknpass-11cc5-default-rtdb.firebaseio.com',
    storageBucket: 'picknpass-11cc5.appspot.com',
    iosBundleId: 'com.example.picknpass',
  );
}
