import 'package:chat_app_starter_project/screens/auth/login.dart';
import 'package:flutter/material.dart';

import '../../utils/util_functions.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      UtilFunctions.navigateTo(context, const Login());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.chat,
              size: 100,
            ),
            SizedBox(height: 8),
            Text(
              "DUDE",
              style: TextStyle(
                fontSize: 36,
                color: Color(0xff838383),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
