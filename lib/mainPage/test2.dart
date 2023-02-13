import 'package:flutter/material.dart';
import 'package:naptah/mainPage/test.dart';
class dialog extends StatefulWidget {
  const dialog({super.key});

  @override
  State<dialog> createState() => _dialogState();
}

class _dialogState extends State<dialog> {
  bool _saveCard = false;
  @override 
  Widget build(BuildContext context) {
    return  Container(
      child: AlertDialog(
      title: Text("Enter Details"),
      content: Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
                decoration: InputDecoration(
                    labelText: "Title", border: OutlineInputBorder())),
            CheckboxListTile(
              value: _saveCard,
              onChanged: (bool? value) {
                setState(() {
                  _saveCard = value ?? false;
                });
              },
              title: Text('Save the card information for future'),
            ),
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          TextFormField(
            decoration: InputDecoration(labelText: "Name"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Email"),
          ),
          MaterialButton(
            onPressed: () {Navigator.of(context).pop();},
            child: Text("Submit"),
          ),
        ],
      ),
      ),
    
    
      ),
    );
  }
}