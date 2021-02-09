import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'dart:developer' as developer;

class LoginBox extends StatefulWidget {
  _LoginBoxState createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    loginTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor('#8FB3f5'),
        borderRadius: BorderRadius.all(Radius.circular(37)),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <TextField>[
                TextField(
                  controller: loginTextController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Login'),
                ),
                TextField(
                  controller: passwordTextController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password'),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: loginClicked,
                child: Text('Login'),
              ),
              SizedBox(
                width: 78,
              ),
              FlatButton(
                onPressed: signupClicked,
                child: Text('Signup'),
              ),
            ],
          ),
        ],
      ),
      height: 320,
      width: 330,
    );
  }

  void loginClicked() {
    developer.log('[LoginBox Widget]login button clicked');
    // developer.log(loginTextController.text);
    // developer.log(passwordTextController.text);
  }

  void signupClicked() {
    //TODO: add new screen for signup
    developer.log('[LoginBox Widget]signuped clicked');
  }
}
