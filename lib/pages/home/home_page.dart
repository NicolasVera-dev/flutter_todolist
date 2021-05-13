import 'package:flutter/material.dart';
import '../../services/firebase_auth_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              signOut();
            },
            child: Text('Déconnexion'),
          ),
        ),
      ),
    );
  }
}