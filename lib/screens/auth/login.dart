import 'package:chat_app_starter_project/screens/main/main_screen.dart';
import 'package:chat_app_starter_project/utils/util_functions.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.chat,
            size: 100,
          ),
          const SizedBox(height: 8),
          const Text(
            "Dude",
            style: TextStyle(
              fontSize: 36,
              color: Color(0xff838383),
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            onTap: () {
              UtilFunctions.navigateTo(context, const MainScreen());
            },
            text: 'signin with google',
          )
        ],
      ),
    ));
  }
}
