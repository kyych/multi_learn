import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_learn/screens/mainscreen.dart';

import 'dart:developer' as developer;

import 'package:multi_learn/screens/signupscreen.dart';

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

  Future<void> loginClicked() async {
    developer.log('[LoginBox Widget]login button clicked');
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: loginTextController.text,
              password: passwordTextController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    FirebaseAuth.instance.authStateChanges().listen((User user) {
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainScreen()));
      }
    });
    // developer.log(loginTextController.text);
    // developer.log(passwordTextController.text);
  }

  void signupClicked() {
    //TODO: add new screen for signup
    developer.log('[LoginBox Widget]signuped clicked');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignupScreen()));
  }
}
