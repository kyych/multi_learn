import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchForPeopleScreen extends StatefulWidget {
  _SearchForPeopleScreen createState() => _SearchForPeopleScreen();
}

class _SearchForPeopleScreen extends State<SearchForPeopleScreen> {
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
      child: const Center(child: Text('search')),
    ));
  }
}
