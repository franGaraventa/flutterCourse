import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/src/cards.dart';
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
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitle),
          ),
          body: CardWidget()),
    );
  }
}
