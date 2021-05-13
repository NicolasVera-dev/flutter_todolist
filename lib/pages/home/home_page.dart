import 'package:flutter/material.dart';
import '../../services/firebase_auth_service.dart';
import 'components/formSection_widget.dart';
import 'components/listSection_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('TodoList'),
          leading: IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              signOut();
            },
          ),
          backgroundColor: Colors.red,    
        ),
        body: Column(
          children: [
            FormSection(),
            Expanded(
              child: ListSection(),
            )
          ],
        ),
      ),
    );
  }
}