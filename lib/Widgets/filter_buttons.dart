// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class filterButton extends StatelessWidget {
  late String title;

  filterButton(this.title);

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        height: Height * .040,
        width: Width / 2.8,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white),
        child: Center(
          child: Text(
            "$title",
            style: const TextStyle(
                fontSize: 16.5,
                color: Colors.black87,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
