import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/login/login_page.dart';
import 'pages/home/home_page.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  auth.authStateChanges().listen((User user) {
    if(user==null){
      print('Utilisateur non connecté');
      runApp(LoginPage());
    } else {
      print('Utilisateur connecté');
      runApp(HomePage());
    }
  });
}
