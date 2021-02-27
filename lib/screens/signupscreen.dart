import 'dart:developer' as developer;

import 'package:flutter/material.dart';
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
          const Text(
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
