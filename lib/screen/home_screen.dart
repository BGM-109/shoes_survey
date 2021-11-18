import 'package:flutter/material.dart';
import 'package:shoes_survey/screen/detail_screen.dart';
import 'package:shoes_survey/shoes_data.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "재미로보는인간지표",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: ShoesData.data
            .map((shoes) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailScreen()),
                  );
                },
                child: Text(shoes.name)))
            .toList(),
      ),
    );
  }
}
