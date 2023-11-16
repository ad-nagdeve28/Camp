import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class TitleContainer extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  TitleContainer(this.imageUrl, this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(imageUrl!)));
      },
      child: Container(
        height: height!,
        width: width!,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(imageUrl!),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(10),
        // Replace with your Flutter logo image
        child: const Stack(
          children: [
            Positioned(
                top: 0.0,
                right: 2.0,
                child: CircleAvatar(
                  maxRadius: 16.5,
                  backgroundColor: Colors.black38,
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.white60,
                  ),
                )),
            Positioned(
                bottom: 0.0,
                child: Text(
                  "Nature",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ))
          ],
        ),
      ),
    );
  }
}
