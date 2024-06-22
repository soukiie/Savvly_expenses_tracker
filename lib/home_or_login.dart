import 'package:expenses_tracker/features/home/home_screen.dart';
import 'package:expenses_tracker/features/login/ui/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeOrLogin extends StatelessWidget {
  const HomeOrLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User? user = snapshot.data;
            if (user == null) {
              return const LoginScreen();
            } else {
              return const HomeScreen();
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
