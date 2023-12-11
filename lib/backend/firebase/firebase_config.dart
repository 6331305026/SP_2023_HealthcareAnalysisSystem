import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDiHOqF1EF41UyogTuE2zMaPDHRSkSMH84",
            authDomain: "dietz-healthcare-8c984.firebaseapp.com",
            projectId: "dietz-healthcare-8c984",
            storageBucket: "dietz-healthcare-8c984.appspot.com",
            messagingSenderId: "192303936347",
            appId: "1:192303936347:web:05259890feeb0b5974207e"));
  } else {
    await Firebase.initializeApp();
  }
}
