import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  StackWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      overflow: Overflow.visible,
      children: [
        Container(
          height: 300,
          width: 400,
          color: Colors.green,
          child: Center(
            child: Text(
              "Text",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          right: 20,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
        )
      ],
    );
  }
}
