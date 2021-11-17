import 'package:flutter/material.dart';
import 'package:shoes_survey/shoes_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: ShoesData.data.map((shoes) => Text(shoes.name)).toList(),
      ),
    );
  }
}
