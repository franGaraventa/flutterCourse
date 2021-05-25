import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  final int snackBarDuration;
  final String snackBarContent;

  SnackBarWidget({
    Key key,
    this.snackBarDuration = 3,
    this.snackBarContent = "This is a notification",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text("Snack Bar"),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.lightGreen)),
        onPressed: () {
          final message = SnackBar(
            content: Text(snackBarContent),
            duration: Duration(seconds: snackBarDuration),
          );
          Scaffold.of(context).showSnackBar(message);
        },
      ),
    );
  }
}
