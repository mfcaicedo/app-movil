
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions{
  const DefaultFirebaseOptions._();

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) throw UnsupportedError('Unsupported platform');
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _android;
      case TargetPlatform.fuchsia:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.iOS:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.linux:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.macOS:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.windows:
        throw UnsupportedError('Unsupported platform');
    }
  }

  static const FirebaseOptions _android =FirebaseOptions(
      apiKey: 'AIzaSyCzvxGHa-61cQn5qepuClY68qgvUdr4j3o',
      appId: '1:804487813205:android:27b1d35ffb4e90adfc9cdc',
      messagingSenderId: '804487813205',
      projectId: 'autenticacionappmovil'
  );
}