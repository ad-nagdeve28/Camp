import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class google_login_button extends StatefulWidget{
  @override
  google_loginState createState() => google_loginState();
}

class google_loginState extends State<google_login_button>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
        onPressed: (){},
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(30)
          ),
          child:  new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: new Container(
              decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        );
  }
}