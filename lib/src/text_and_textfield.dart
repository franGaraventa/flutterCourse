import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextAndTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello World",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            backgroundColor: Colors.redAccent,
            letterSpacing: 4.0,
            wordSpacing: 15.0,
            shadows: [
              Shadow(
                color: Colors.white,
                offset: Offset(2.0, 2.0),
              )
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: "Hello",
            style: TextStyle(color: Colors.amber),
            children: <TextSpan>[
              TextSpan(
                text: "World!!",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name: ",
              hintText: "Enter your name"
            ),
          ),
        )
      ],
    );
  }
}
