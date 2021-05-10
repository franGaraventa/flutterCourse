import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/utils/Strings.dart';
import 'package:flutter_course/utils/dimension.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
        ),
        body: Center(
            child: Container(
          height: Dimension.containerHeight,
          width: Dimension.containerWidth,
          margin: EdgeInsets.all(Dimension.containerMargin),
          padding: EdgeInsets.all(Dimension.containerPadding),
          decoration: BoxDecoration(
              border: Border.all(
                  width: Dimension.containerBoxDecorationBorder,
                  color: Colors.black),
              color: Colors.blueAccent.shade200,
              borderRadius: BorderRadius.circular(
                  Dimension.containerBoxDecorationBorderRadius),
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey,
                    offset: Offset(
                        Dimension.containerBoxDecorationBoxShadowOffset,
                        Dimension.containerBoxDecorationBoxShadowOffset))
              ]),
          child: Text("Text into Container"),
          transform: Matrix4.rotationZ(Dimension.containerTransformRotationZ),
        )),
      ),
    );
  }
}
