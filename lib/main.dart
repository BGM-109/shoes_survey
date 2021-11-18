import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_survey/screen/detail_screen_view_model.dart';
import 'package:shoes_survey/screen/home_screen.dart';
import 'package:shoes_survey/screen/login_screen.dart';
import 'package:shoes_survey/screen/login_screen_view_model.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<DetailScreenViewModel>(
          create: (context) => DetailScreenViewModel()),
      ChangeNotifierProvider(
        create: (context) => LoginScreenViewModel(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: LoginScreen.id,
      home: const LoginScreen(),
    );
  }
}
