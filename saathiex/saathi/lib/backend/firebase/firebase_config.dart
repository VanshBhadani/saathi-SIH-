import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBQ88JPXhFMG_lcevQpZ1FT6_j4vcV16SQ",
            authDomain: "saathi-a3ro7w.firebaseapp.com",
            projectId: "saathi-a3ro7w",
            storageBucket: "saathi-a3ro7w.firebasestorage.app",
            messagingSenderId: "673087491142",
            appId: "1:673087491142:web:488e41f2a7b1dc359a4e47"));
  } else {
    await Firebase.initializeApp();
  }
}
