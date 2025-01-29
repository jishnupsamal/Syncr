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
    apiKey: 'AIzaSyDK3F-RZCvDryvqX6twz1L8n0AXnVhuRwk',
    appId: '1:822770971465:web:5d0b9d7b2a8a693c8ee098',
    messagingSenderId: '822770971465',
    projectId: 'syncr-mwr',
    authDomain: 'syncr-mwr.firebaseapp.com',
    storageBucket: 'syncr-mwr.firebasestorage.app',
    measurementId: 'G-CKR4N7NGXZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAO7JjiE0hjxHFneZzBuiwlEQdca0xYhF8',
    appId: '1:822770971465:android:f156fd8a736934188ee098',
    messagingSenderId: '822770971465',
    projectId: 'syncr-mwr',
    storageBucket: 'syncr-mwr.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3o9fvvZR9IHWq5Nu9wImX-_TWDZzXHqs',
    appId: '1:822770971465:ios:46dc73668ae1eef58ee098',
    messagingSenderId: '822770971465',
    projectId: 'syncr-mwr',
    storageBucket: 'syncr-mwr.firebasestorage.app',
    iosBundleId: 'com.jishnupsamal.swiftly',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3o9fvvZR9IHWq5Nu9wImX-_TWDZzXHqs',
    appId: '1:822770971465:ios:46dc73668ae1eef58ee098',
    messagingSenderId: '822770971465',
    projectId: 'syncr-mwr',
    storageBucket: 'syncr-mwr.firebasestorage.app',
    iosBundleId: 'com.jishnupsamal.swiftly',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDK3F-RZCvDryvqX6twz1L8n0AXnVhuRwk',
    appId: '1:822770971465:web:848e64b514c388ba8ee098',
    messagingSenderId: '822770971465',
    projectId: 'syncr-mwr',
    authDomain: 'syncr-mwr.firebaseapp.com',
    storageBucket: 'syncr-mwr.firebasestorage.app',
    measurementId: 'G-8LCNY5CXVH',
  );
}
