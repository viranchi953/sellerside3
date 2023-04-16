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
    apiKey: 'AIzaSyBs5yU0uzBlTk7Ir_bUfxmuTAV8GK8_PZA',
    appId: '1:393173227917:web:6d43a17562dcad1ee4c5c4',
    messagingSenderId: '393173227917',
    projectId: 'farmily-app-a2cbf',
    authDomain: 'farmily-app-a2cbf.firebaseapp.com',
    storageBucket: 'farmily-app-a2cbf.appspot.com',
    measurementId: 'G-6YWZEERPXC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPkXYPgBWaqmO4UCT70ckORAw6-lPJ-BY',
    appId: '1:393173227917:android:21531a4684778e38e4c5c4',
    messagingSenderId: '393173227917',
    projectId: 'farmily-app-a2cbf',
    storageBucket: 'farmily-app-a2cbf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwkoIMd3le8NEflSJx2Z1qulN7jJDeRvI',
    appId: '1:393173227917:ios:1deaefc4fa707a2de4c5c4',
    messagingSenderId: '393173227917',
    projectId: 'farmily-app-a2cbf',
    storageBucket: 'farmily-app-a2cbf.appspot.com',
    androidClientId: '393173227917-0jpeqf6820ia8s895coccukomp2e0beo.apps.googleusercontent.com',
    iosClientId: '393173227917-6eufm19vp92255r8urf6qand3skunpmi.apps.googleusercontent.com',
    iosBundleId: 'com.example.sellerside',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwkoIMd3le8NEflSJx2Z1qulN7jJDeRvI',
    appId: '1:393173227917:ios:1deaefc4fa707a2de4c5c4',
    messagingSenderId: '393173227917',
    projectId: 'farmily-app-a2cbf',
    storageBucket: 'farmily-app-a2cbf.appspot.com',
    androidClientId: '393173227917-0jpeqf6820ia8s895coccukomp2e0beo.apps.googleusercontent.com',
    iosClientId: '393173227917-6eufm19vp92255r8urf6qand3skunpmi.apps.googleusercontent.com',
    iosBundleId: 'com.example.sellerside',
  );
}