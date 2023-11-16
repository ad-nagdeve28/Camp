import 'package:camp/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideAction(
      elevation: 0.0,
      innerColor: Colors.lightGreen,
      outerColor: Colors.white,
      text: 'Get Started',
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w600),
      onSubmit: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        return null;
      },
    );
  }
}
