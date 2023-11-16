import 'package:camp/Widgets/slide_button.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  @override
  splash_screen_state createState() => splash_screen_state();
}

class splash_screen_state extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            // color: Colors.white,
            image: DecorationImage(
                image: AssetImage('./screen2.jpg'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            const Positioned(
              top: 150,
              right: 80,
              child: Text(
                "let's go camping",
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: 'Ubuntu'),
              ),
            ),
            Positioned(bottom: 30, right: 40, left: 40, child: SlideButton()),
          ],
        ),
      ),
    );
  }
}
