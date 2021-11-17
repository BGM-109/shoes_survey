import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_survey/screen/detail_screen_view_model.dart';
import 'package:shoes_survey/screen/home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<DetailScreenViewModel>(
          create: (context) => DetailScreenViewModel()),
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
      home: const HomeScreen(),
    );
  }
}
