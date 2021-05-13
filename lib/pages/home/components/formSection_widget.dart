import 'package:flutter/material.dart';
import '../../../services/firebase_item_service.dart';

class FormSection extends StatelessWidget {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.grey.withOpacity(0.1),
       child: Theme(
         data: ThemeData(
           primaryColor: Colors.redAccent,
         ),
         child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: 'Entrez une nouvelle tâche',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  addItem(myController);
                },
              ),
            ),
          ],
        ),
      ), 
    );
  }
}