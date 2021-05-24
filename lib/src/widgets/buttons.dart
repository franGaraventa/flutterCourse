import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final double textFontSize;
  final MaterialAccentColor buttonColor;
  final Color buttonTextColor;

  Buttons({
    Key key,
    this.textFontSize = 20,
    this.buttonColor = Colors.lightBlueAccent,
    this.buttonTextColor = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
            onPressed: () {},
            child: Text(
              "Flat Button",
              style: TextStyle(
                fontSize: textFontSize,
              ),
            ),
            color: buttonColor,
            textColor: buttonTextColor),
        RaisedButton(
          onPressed: () {},
          child: Text("Raised Button"),
          color: buttonColor,
          textColor: buttonTextColor,
          splashColor: Colors.blueAccent,
        ),
        FloatingActionButton(
          child: Icon(Icons.save),
          foregroundColor: buttonTextColor,
          backgroundColor: Colors.orange,
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Floating Action Extended"),
          icon: Icon(Icons.save),
        )
      ],
    );
  }
}
