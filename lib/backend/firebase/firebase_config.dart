import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBY7iaAG8jtk2s9bi5Zah-w6gwYDxEuy7g",
            authDomain: "moonlight-v4.firebaseapp.com",
            projectId: "moonlight-v4",
            storageBucket: "moonlight-v4.firebasestorage.app",
            messagingSenderId: "560612359834",
            appId: "1:560612359834:web:526b31cdfe55da5808e923",
            measurementId: "G-9H5T15WSG7"));
  } else {
    await Firebase.initializeApp();
  }
}
