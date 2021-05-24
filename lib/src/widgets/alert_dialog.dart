import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  AlertDialogWidget({Key key}) : super(key: key);

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text("Basic AlertDialog"),
          onPressed: () async {
            //alertDialogWidget(context);
            //textFieldAlertDialogWidget(context, _textEditingController);
            final field fieldData =
            await confirmAlertDialogWidget(context, _textEditingController);
            print("User selection $fieldData");
          },
          color: Colors.blue,
        ),
      ),
    );
  }
}

alertDialogWidget(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basic"),
          content: Text("This is for notification purpose!!"),
          actions: [
            RaisedButton(
              child: Text("OK"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

textFieldAlertDialogWidget(BuildContext context,
    TextEditingController textEditingController) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("TextField"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter a name"),
            controller: textEditingController,
          ),
          actions: [
            RaisedButton(
              child: Text("OK"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}

enum field { Confirm, Accept }

Future<field> confirmAlertDialogWidget(BuildContext context,
    TextEditingController textEditingController) async {
  showDialog<field>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm"),
          content: Text("This is for notification purposed"),
          actions: [
            RaisedButton(
              child: Text("Cancel"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop(field.Confirm);
              },
            ),
            RaisedButton(
              child: Text("Accept"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop(field.Accept);
              },
            )
          ],
        );
      });
}
