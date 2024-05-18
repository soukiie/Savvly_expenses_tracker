import 'package:expenses_tracker/core/routing/routing.dart';
import 'package:expenses_tracker/my_app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    routing: Routing(),
  ));
}
