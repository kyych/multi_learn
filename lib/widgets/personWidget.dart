import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  String name, wantsToLearn;
  String message;

  //TODO: add photo of person

  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: _personPressed, child: Text('${message}'));
  }

  PersonWidget(this.message) {}

  void _personPressed() {
    //TODO: profilePage open
  }
}
