import 'package:flutter/material.dart';
import '../Widgets/text_widget.dart';
import '../components/rating.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  String DetailsText =
      "The Doon Valley is an unusually wide, long valley within the Sivalik Hills and the Lesser Himalayas, in the Indian states of Uttarakhand, Himachal Pradesh and Haryana. Within the valley lies the city of Dehradun, the winter capital of Uttarakhand state. ";

  final String img;
  Details(this.img);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 450,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
              image: DecorationImage(
                  image: NetworkImage(img as String), fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: const Offset(8.0, 8.0),
                  blurRadius: 5.0,
                  spreadRadius: 1.2,
                ),
                BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0)
              ]),
          child: Stack(
            children: [
              Positioned(
                  top: 10.0,
                  left: 10.0,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      )))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget("Dun valley", 25, Colors.black87, FontWeight.w700),
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(width: 5.0),
                  TextWidget(
                      "Himachal Pradesh", 16, Colors.black87, FontWeight.w600),
                  Rating()
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: RichText(
                  text: TextSpan(
                      text: DetailsText,
                      style: TextStyle(color: Colors.black87, fontSize: 16)),
                  softWrap: true,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('./map.png'), fit: BoxFit.fill)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('./map.png'), fit: BoxFit.fill)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('./map.png'), fit: BoxFit.fill)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('./map.png'), fit: BoxFit.fill)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('./map.png'), fit: BoxFit.fill)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
