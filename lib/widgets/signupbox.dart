import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:developer' as developer;

import 'package:multi_learn/screens/mainscreen.dart';

class SignupBox extends StatefulWidget {
  _SignupBoxState createState() => _SignupBoxState();
}

class _SignupBoxState extends State<SignupBox> {
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
        color: Color(0xfff8FB3f5),
        borderRadius: BorderRadius.all(Radius.circular(37)),
      ),
      height: 320,
      width: 330,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30),
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
          TextButton(
            onPressed: signupClicked,
            child: Text('Signup'),
          ),
        ],
      ),
    );
  }

  Future<void> signupClicked() async {
    developer.log('[LoginBox Widget]signuped clicked');
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: loginTextController.text,
              password: passwordTextController.text);
      developer.log('[LoginBox Widget]in');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainScreen()));
      }
    });
  }
}
