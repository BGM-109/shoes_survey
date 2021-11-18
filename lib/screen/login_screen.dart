import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:shoes_survey/screen/login_screen_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = "login_screen";

  @override
  Widget build(BuildContext context) {
    final provider = context.read<LoginScreenViewModel>();
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(
            size: 200.0,
          ),
          ElevatedButton(
            onPressed: () {
              provider.googleLogin();
            },
            child: const Text("구글로 로그인하기!"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("애플로 로그인하기!"),
          )
        ],
      ),
    ));
  }
}
