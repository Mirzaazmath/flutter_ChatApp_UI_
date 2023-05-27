import 'package:flutter/material.dart';

import 'allchatscreen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient:  LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors:  [

              Color(0xff214670),
              Color(0xff151822),
              Color(0xff214670),
              Color(0xff151822),
              Color(0xff151822),

            ]
          ),

        ),
        child: AllChatScreen(),
      ),
    );
  }
}
