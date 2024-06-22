import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:transpo_track/app.dart';
import 'package:transpo_track/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}
