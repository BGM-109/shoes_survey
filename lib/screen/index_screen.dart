import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoes_survey/screen/home_screen.dart';
import 'package:shoes_survey/screen/login_screen.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return const HomeScreen();
            } else if (snapshot.hasError) {
              return const Center(child: Text("에러입니다!"));
            } else {
              return const LoginScreen();
            }
          }),
    );
  }
}
