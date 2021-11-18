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
              Text("${viewModel.up} : ${viewModel.down}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  viewModel.isPolled
                      ? const DisableButton(
                          text: "추천하셨네요",
                        )
                      : Row(
                          children: [
                            EnabledButton(
                              text: "Yes",
                              onPressed: viewModel.countUp,
                            ),
                            EnabledButton(
                              text: "No",
                              onPressed: viewModel.countDown,
                            ),
                          ],
                        ),
                ],
              ),
              const Text("매일 00시에 초기화 됩니다"),
              TextFormField(),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text("댓글 영역"),
                ),
              )
            ],
          ),
        ));
  }
}

class EnabledButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const EnabledButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}

class DisableButton extends StatelessWidget {
  final String text;

  const DisableButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey,
        ),
        onPressed: () {},
        child: Text(text));
  }
}
