import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/src/widgets/slider_widget.dart';
import 'package:flutter_course/utils/Strings.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitle),
          ),
          body: SliderWidget()),
    );
  }
}
