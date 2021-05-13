import 'package:flutter/material.dart';

Widget flutterIcon = Container(
  margin: EdgeInsets.only(top: 30),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(60),
    color: Color.fromRGBO(255, 255, 255, 0.1),
  ),
  height: 200,
  width: 200,
  child: Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 15,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Image.asset('images/chambersign.png'),
  ),
);