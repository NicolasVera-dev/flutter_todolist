import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleSection = Container(
  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Todo',
        style: GoogleFonts.exo(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
      SizedBox(width: 3),
      Text(
        'List',
        style: GoogleFonts.exo(
            fontSize: 40, fontWeight: FontWeight.w900, color: Colors.black),
      ),
    ],
  ),
);