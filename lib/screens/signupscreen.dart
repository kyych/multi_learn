import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'dart:developer' as developer;

import 'package:multi_learn/widgets/signupbox.dart';

class SignupScreen extends StatefulWidget {
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    developer.log('Login screen launched');
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [HexColor("#3F497B"), HexColor("#7EAAD1")],
      )),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'MultiLearn',
              style: TextStyle(
                fontSize: 33,
              ),
            ),
          ),
          Text(
            'Signup',
            style: TextStyle(fontSize: 28),
          ),
          Padding(
            padding: EdgeInsets.only(top: 175),
            child: SignupBox(),
          ),
        ],
      ),
    ));
  }
}
