import 'package:flutter/material.dart';

class custom_container extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}