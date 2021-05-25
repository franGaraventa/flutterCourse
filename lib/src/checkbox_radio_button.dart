import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Gender{Male, Female}

class CheckBoxAndRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckBoxAndRadioButtonState();
}

class _CheckBoxAndRadioButtonState extends State<CheckBoxAndRadioButton> {
  bool checkBoxValue = false;
  bool checkBoxListTileValue = false;
  Gender gender = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CheckBox & RadioButton"),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Text for CheckBox"),
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.lightGreen,
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        this.checkBoxValue = value;
                      });
                    },
                  ),
                ],
              ),
              CheckboxListTile(
                title: Text("CheckBox List Tile"),
                subtitle: Text("CheckBox List Tile Subtitle"),
                secondary: Icon(Icons.add_to_home_screen),
                value: checkBoxListTileValue,
                onChanged: (bool value) {
                  setState(() {
                    this.checkBoxListTileValue = value;
                  });
                },
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Male,
                  groupValue: gender,
                  onChanged: (Gender value){
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("Male")
              ),
              ListTile(
                  leading: Radio(
                    value: Gender.Female,
                    groupValue: gender,
                    onChanged: (Gender value){
                      setState(() {
                        this.gender = value;
                      });
                    },
                  ),
                  title: Text("Female")
              )
            ],
          ),
        ),
      ),
    );
  }
}
