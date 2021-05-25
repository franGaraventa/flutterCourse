import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearProgressBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LinearProgressBarState();
}

class _LinearProgressBarState extends State<LinearProgressBar> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(100),
              child: loading
                  ? LinearProgressIndicator()
                  : Text("Please Click to Download"),
            ),
          ),
          RaisedButton(
            child: Text("Download"),
            color: Colors.blue,
            onPressed: () {
              setState(() {
                loading = !loading;
              });
            },
          )
        ],
      ),
    );
  }
}

class CircularProgressBar extends StatelessWidget {
  final double strokeWidth;

  CircularProgressBar({Key key, this.strokeWidth = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(
          backgroundColor: Colors.lightBlueAccent,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}
