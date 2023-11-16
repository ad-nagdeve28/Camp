import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  late String textTitle;
  late FontWeight textfontWeight;
  late Color textColor;
  late double textSize;
  TextWidget(
      this.textTitle, this.textSize, this.textColor, this.textfontWeight);
  @override
  Widget build(BuildContext context) {
    return Text(
      "$textTitle",
      style: TextStyle(
          color: textColor, fontSize: textSize, fontWeight: textfontWeight),
    );
  }
}
