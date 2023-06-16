import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3aZ3WIyKf7xbKNm3Ws_287CbCLZVqcXI",
            authDomain: "tanaya-de559.firebaseapp.com",
            projectId: "tanaya-de559",
            storageBucket: "tanaya-de559.appspot.com",
            messagingSenderId: "691006708315",
            appId: "1:691006708315:web:ca11461255b21709affd7e",
            measurementId: "G-7JM9G7P0BQ"));
  } else {
    await Firebase.initializeApp();
  }
}
