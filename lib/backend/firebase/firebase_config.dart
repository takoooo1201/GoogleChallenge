import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyALUEN8UcosBtVxEBOcr23NhIGZPiiE0tg",
            authDomain: "test0-67d4f.firebaseapp.com",
            projectId: "test0-67d4f",
            storageBucket: "test0-67d4f.appspot.com",
            messagingSenderId: "738521869780",
            appId: "1:738521869780:web:9b6f3da0a26cfa207b3a41"));
  } else {
    await Firebase.initializeApp();
  }
}
