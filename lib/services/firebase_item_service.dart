import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'firebase_auth_service.dart';

void addItem(TextEditingController myController){
  try {
    var now = new DateTime.now();
    var hourAndMinute = new DateFormat('y-MM-d à HH:mm');
    databaseReference.collection('items').add({
      "text": myController.text,
      "time": hourAndMinute.format(now),
      "done": false,
      }).then((value) {
        print(value.id);
        myController.clear();
    });
  } catch (error) {
    print(error.toString());
  }
}

void updateItem(String itemID, bool itemDone) {
  databaseReference.collection('items').doc(itemID).update({
    "done": itemDone
  });
}

void deleteItem(String itemID) {
  databaseReference.collection('items').doc(itemID).delete();
}
