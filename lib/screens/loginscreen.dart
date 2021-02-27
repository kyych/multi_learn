import 'dart:developer' as developer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_learn/widgets/loginbox.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    developer.log('Login screen launched');
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xfff3F497B), Color(0xfff7EAAD1)],
      )),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'MultiLearn',
              style: TextStyle(
                fontSize: 33,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 175),
            child: LoginBox(),
          ),
        ],
      ),
    ));
  }
}
