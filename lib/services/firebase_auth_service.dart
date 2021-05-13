import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

FirebaseAuth auth = FirebaseAuth.instance;

void loginToFirebase(TextEditingController emailField, TextEditingController passwordField) {
  print(emailField);
  print(passwordField);
  try {
    auth
      .signInWithEmailAndPassword(
        email: emailField.text.trim(),
        password: passwordField.text.trim())
      .then((value) {
      print(value.toString());
    });
  } catch (e) {
    print(e.toString());
  }
}

void signOut() {
  print('Déconnexion...');
  auth.signOut();
}