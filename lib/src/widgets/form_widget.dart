import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormState();
}

class _FormState extends State<FormWidget> {
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter your name",
                labelText: "Name",
                icon: Icon(Icons.person)),
            validator: (value) {
              return value.isEmpty ? 'Please fill the details' : null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
                icon: Icon(Icons.lock)),
            validator: (value) {
              return value.isEmpty ? 'Please fill the details' : null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "GitHub link",
                labelText: "Github link",
                icon: Icon(Icons.link)),
            validator: (value) {
              return value.isEmpty ? 'Please fill the details' : null;
            },
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                if (key.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text("Validation Going on")));
                }
              },
              child: Text("Submit"),
            ),
          )
        ],
      ),
    );
  }
}
