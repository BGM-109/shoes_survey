import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:shoes_survey/model/shoes.dart';
import 'package:shoes_survey/screen/detail_screen_view_model.dart';
import 'package:shoes_survey/shoes_data.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailScreenViewModel viewModel = context.watch<DetailScreenViewModel>();
    Shoes fakeData = ShoesData.data[0];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Up and Down"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(fakeData.name),
              Text(fakeData.brand),
              Image.network(fakeData.profileUrl),
              Text("${viewModel.count}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        viewModel.countUp();
                      },
                      child: const Text("Up")),
                  TextButton(
                      onPressed: () {
                        viewModel.countDown();
                      },
                      child: const Text("Down")),
                ],
              ),
              Text("오늘날짜넣은 다음에 아침 09시마다 초기화"),
              Text("몇월몇일 맞음 틀림"),
              Text("크림에서는 얼마고~"),
              Text("지난 일주일동안 맞았는지 틀렸는지"),
              Text("택스트필드"),
              Text("댓글불러오기")
            ],
          ),
        ));
  }
}
