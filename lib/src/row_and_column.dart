import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowAndColumns extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final MaterialColor containerColor;

  RowAndColumns(
      {Key key,
      this.containerWidth = 100,
      this.containerHeight = 50,
      this.containerColor = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            height: containerHeight,
            width: containerWidth,
            margin: EdgeInsets.all(10),
            color: containerColor,
            child: Text("Container 1")),
        Container(
          height: containerHeight,
          width: containerWidth,
          margin: EdgeInsets.all(10),
          color: containerColor,
          child: Text("Container 2"),
        )
      ],
    );
  }
}
