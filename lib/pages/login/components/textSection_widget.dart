import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textSection = Container(
  margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
  child: Text(
    'Connectez-vous avec vos identifiants',
    style: GoogleFonts.comfortaa(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red[700]),
  ),
);