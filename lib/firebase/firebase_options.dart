import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: String.fromEnvironment('WEB_API_KEY'),
    appId: String.fromEnvironment('WEB_APP_ID'),
    messagingSenderId: String.fromEnvironment('MESSAGING_SENDER_ID'),
    projectId: 'teus-agenda',
    authDomain: 'teus-agenda.firebaseapp.com',
    storageBucket: 'teus-agenda.appspot.com',
    measurementId: 'G-J69VBTT6Y8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: String.fromEnvironment('ANDROID_API_KEY'),
    appId: String.fromEnvironment('ANDROID_APP_ID'),
    messagingSenderId: String.fromEnvironment('MESSAGING_SENDER_ID'),
    projectId: 'teus-agenda',
    storageBucket: 'teus-agenda.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: String.fromEnvironment('IOS_API_KEY'),
    appId: String.fromEnvironment('IOS_APP_ID'),
    messagingSenderId: String.fromEnvironment('MESSAGING_SENDER_ID'),
    projectId: 'teus-agenda',
    storageBucket: 'teus-agenda.appspot.com',
    iosBundleId: 'com.teussistemas.teusagenda',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: String.fromEnvironment('MACOS_API_KEY'),
    appId: String.fromEnvironment('MACOS_APP_ID'),
    messagingSenderId: String.fromEnvironment('MESSAGING_SENDER_ID'),
    projectId: 'teus-agenda',
    storageBucket: 'teus-agenda.appspot.com',
    iosBundleId: 'com.teussistemas.teusagenda',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: String.fromEnvironment('WINDOWS_API_KEY'),
    appId: String.fromEnvironment('WINDOWS_APP_ID'),
    messagingSenderId: String.fromEnvironment('MESSAGING_SENDER_ID'),
    projectId: 'teus-agenda',
    authDomain: 'teus-agenda.firebaseapp.com',
    storageBucket: 'teus-agenda.appspot.com',
    measurementId: 'G-P8G417NDMZ',
  );
}