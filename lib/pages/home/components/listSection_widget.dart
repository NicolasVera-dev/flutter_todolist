import 'package:flutter/material.dart';
import '../../../services/firebase_auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../services/firebase_item_service.dart';

class ListSection extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: databaseReference.collection('items').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        return ListView(
          children:  snapshot.data.docs.map((document) {
            return CheckboxListTile(
              title: Text(
                document['text'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              value: document['done'],
              subtitle: new Text(document['time']),
              activeColor: Colors.green,
              secondary: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.redAccent
                ),
                onPressed: () {
                  deleteItem(document.id);
                },
              ), 
              onChanged: (bool value) {
                print(value);
                updateItem(document.id, value);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
