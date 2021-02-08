import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          Padding(
            padding: EdgeInsets.only(top: 175),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor('#8FB3f5'),
                borderRadius: BorderRadius.all(Radius.circular(37)),
              ),
              height: 320,
              width: 330,
            ),
          ),
        ],
      ),
    ));
  }
}
