import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDD2s68aNh_0CBkMY3dtFk9rUPVm2vGTrs",
            authDomain: "home-care-learn.firebaseapp.com",
            projectId: "home-care-learn",
            storageBucket: "home-care-learn.appspot.com",
            messagingSenderId: "222467416087",
            appId: "1:222467416087:web:79d266ee40b3db670d7c52",
            measurementId: "G-12VX7E1X58"));
  } else {
    await Firebase.initializeApp();
  }
}
