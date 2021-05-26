import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/src/resources/custom_router.dart';
import 'package:flutter_course/src/resources/route_path.dart';
import 'package:flutter_course/src/widgets/calendar_widget.dart';
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
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoutes.generateRoute,
      initialRoute: homeRoute,
    );
  }
}
