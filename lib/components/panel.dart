import 'package:flutter/material.dart';

import '../Widgets/text_widget.dart';
import '../data.dart';

class Panel extends StatelessWidget {
  const Panel({super.key});

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Drag bar
          Center(
            child: Container(
              height: 10,
              width: 50,
              margin: const EdgeInsets.all(2.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
            ),
          ),
          const SizedBox(height: 10),
          TextWidget("Best Hotels", 20.0, Colors.black87, FontWeight.w700),
          const SizedBox(height: 10),
          Container(
            height: Height * .27,
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: HotelList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                  width: Width * .40,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(right: 5.0, left: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(HotelList[index]),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: [
                      const Positioned(
                          top: 0.0,
                          right: 2.0,
                          child: CircleAvatar(
                            maxRadius: 16.5,
                            backgroundColor: Colors.black38,
                            child: Icon(
                              Icons.bookmark_outline_rounded,
                              color: Colors.white60,
                            ),
                          )),
                      Positioned(
                          bottom: 0.0,
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                                color: Colors.black54),
                            child: const Text(
                              "Nature",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ))
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          TextWidget("Offers", 20.0, Colors.black87, FontWeight.w700),
          Container(
            height: Height * .25,
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: OfferList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Null;
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: Width / 1.5,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(right: 5.0, left: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(OfferList[index]),
                            fit: BoxFit.fill)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
