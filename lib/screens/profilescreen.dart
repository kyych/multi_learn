import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_learn/screens/loginscreen.dart';

class ProfileScreen extends StatefulWidget {
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [HexColor("#3F497B"), HexColor("#7EAAD1")],
      )),
      child: Column(
        children: [
          Center(child: Text('Profile')),
          FlatButton(
              textColor: Colors.amber,
              child: const Text('Logout'),
              onPressed: () async {
                Navigator.of(context).pop();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false);

                await FirebaseAuth.instance.signOut();
              }),
        ],
      ),
    ));
  }

  Future<void> logout() async {
    print('LOGOUT CLICKED');
    await FirebaseAuth.instance.signOut();
  }
}
