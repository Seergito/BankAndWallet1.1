import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJkCWqlTo0IFLmBwJujlyAs35r2_534eE",
            authDomain: "bandw-cad1e.firebaseapp.com",
            projectId: "bandw-cad1e",
            storageBucket: "bandw-cad1e.appspot.com",
            messagingSenderId: "137502983916",
            appId: "1:137502983916:web:be2d636759f02fe28307c9",
            measurementId: "G-E3ZQ1W64CK"));
  } else {
    await Firebase.initializeApp();
  }
}
