import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget forgetButton = Container(
  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: FlatButton(
    onPressed: () {},
    child: Text(
      'Mot de passe oublié ?',
      style: GoogleFonts.comfortaa(
          color: Colors.white, fontWeight: FontWeight.bold),
    ),
  ),
);