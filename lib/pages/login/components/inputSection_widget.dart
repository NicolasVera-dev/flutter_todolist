import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../services/firebase_auth_service.dart';

class InputSection extends StatelessWidget {

  final emailField = TextEditingController();
  final passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 15, 30, 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30, width: 1),
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(255, 255, 255, 0.1),
            ),
            height: 60,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.people_outline,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 60,
                  width: 230,
                  child: Center(
                    child: TextField(
                      controller: emailField,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.comfortaa(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Adresse email',
                        hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30, width: 1),
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(255, 255, 255, 0.1),
            ),
            height: 60,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.lock_outline,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 60,
                  width: 230,
                  child: Center(
                    child: TextField(
                      controller: passwordField,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.comfortaa(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Mot de passe',
                        hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),
          
          SizedBox(
            height: 60,
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.white,
              textColor: Colors.red,
              child: Text(
                "Connexion".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                loginToFirebase(emailField, passwordField);
              },
            ),
          )
        ],
      ),
    );
  }
}