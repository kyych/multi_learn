import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatefulWidget {
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [HexColor("#3F497B"), HexColor("#7EAAD1")],
      )),
      child: Center(child: Text('Profile')),
    ));
  }
}
