import 'package:flutter/material.dart';

import '../Widgets/text_widget.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black54.withOpacity(0.2),
      ),
      margin: const EdgeInsets.all(5.0),
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 1.0, bottom: 1.0),
      child: Row(children: [
        const Icon(
          Icons.star_outlined,
          color: Color.fromARGB(189, 245, 225, 4),
          size: 20,
        ),
        const SizedBox(width: 5.0),
        TextWidget("4.0", 15, Colors.black, FontWeight.w400)
      ]),
    );
  }
}
