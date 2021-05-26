import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _initialValue = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.volume_up),
          ),
          Expanded(
              child: Slider(
            value: _initialValue,
            max: 100,
            min: 0,
            divisions: 10,
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.blue.shade700,
            onChanged: (double value) {
              setState(() => _initialValue = value);
            },
            label: _initialValue.round().toString(),
          ))
        ],
      ),
    );
  }
}
