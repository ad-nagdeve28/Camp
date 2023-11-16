import 'package:camp/Widgets/login_button.dart';
import 'package:flutter/material.dart';

import '../Widgets/google_login_button.dart';

class login_screen extends StatefulWidget{
  @override
  login_State createState() => login_State();
}

class login_State extends State<login_screen>{
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Height,
        width: Width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFBDECEB),
              Colors.white,
            ],
          )
        ),
        child: Stack(
          children: [
            Container(
              height: Height / 2.5,
              width: Width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Assets/Splash_Screen_Images/login_Screen.png'),
                    fit: BoxFit.fitHeight
                )
              ),
            ),
            Positioned(
              top: Height - 430,
              left: 50, right: 50,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(30)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username, mail ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87
                          )
                      ),
                      Container(
                        height: 60,
                        width: Width,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.lightGreen, width: 2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Password",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87
                          )
                      ),
                      Container(
                        height: 60,
                        width: Width,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.lightGreen, width: 2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      login_button(context),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: google_login_button(),
                      )
                    ],
                  ),
                ),

            ),
          ],
        ),
      ),
    );
  }
}