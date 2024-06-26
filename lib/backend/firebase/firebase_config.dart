import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCEGoDmuXD8HElsyH4OXq6A4vYylypsElY",
            authDomain: "bhc-project-a2f70.firebaseapp.com",
            projectId: "bhc-project-a2f70",
            storageBucket: "bhc-project-a2f70.appspot.com",
            messagingSenderId: "944444707796",
            appId: "1:944444707796:web:b88f6476b1a0ec84203c41",
            measurementId: "G-NR9XYN0DXL"));
  } else {
    await Firebase.initializeApp();
  }
}
