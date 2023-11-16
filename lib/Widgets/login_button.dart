import 'package:flutter/material.dart';

Widget login_button(BuildContext context){
  // ignore: unused_local_variable
  double Height = MediaQuery.of(context).size.height;
  double Width = MediaQuery.of(context).size.width;
  return RawMaterialButton(
    onPressed: (){},

    child: Container(
      height: 40,
      width: Width,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF64FFDA),
            Color(0xFF00BFA5),
          ],
        ),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(
        child: Text("Sign In",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}