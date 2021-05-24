import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicList extends StatelessWidget {
  BasicList([Key key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
        ListTile(
          leading: Icon(Icons.person_pin),
          title: Text("Profile"),
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text("Contact"),
        )
      ],
    );
  }
}

class LongList extends StatelessWidget {
  List<String> _stringList;

  LongList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _stringList = List<String>.generate(50, (index) => "Element $index");
    return ListView.builder(
      itemCount: _stringList.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text("$index  ${_stringList[index]}"));
      },
    );
  }
}

