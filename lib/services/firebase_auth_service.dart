import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore databaseReference = FirebaseFirestore.instance;

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

