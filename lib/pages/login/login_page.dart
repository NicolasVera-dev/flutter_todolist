import 'package:flutter/material.dart';
import 'components/flutterIcon_widget.dart';
import 'components/titleSection_widget.dart';
import 'components/textSection_widget.dart';
import 'components/inputSection_widget.dart';
import 'components/forgetButton_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        appBar: AppBar(
          title: Text('Connexion'),
          backgroundColor: Colors.amber,
        ),
        body : Container( 
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.amber[300],
                Colors.amber[700],
                Colors.orange[900],
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                flutterIcon,
                titleSection,
                textSection,
                InputSection(),
                forgetButton,
              ],
            ),
          ),
        )
      )
    );
  }
}