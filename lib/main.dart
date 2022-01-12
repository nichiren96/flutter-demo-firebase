import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuisine/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

const USE_EMULATOR = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (USE_EMULATOR) {
    connectToEmulator();
  }
  runApp(App());
}

connectToEmulator() {
  FirebaseFirestore.instance.useFirestoreEmulator("localhost", 8080);
}
