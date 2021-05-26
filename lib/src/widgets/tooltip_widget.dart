import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  TooltipWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Tooltip(
        waitDuration: Duration(seconds: 2),
        showDuration: Duration(seconds: 3),
        textStyle: TextStyle(fontSize: 20, color: Colors.white),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadiusDirectional.circular(20)
        ),
        message: "Set Alarm",
        child: TextButton(
          child: Icon(
            Icons.alarm,
            size: 150,
          ),
        ),
      ),
    );
  }
}
