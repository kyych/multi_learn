import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchForPeopleScreen extends StatefulWidget {
  _SearchForPeopleScreen createState() => _SearchForPeopleScreen();
}

class _SearchForPeopleScreen extends State<SearchForPeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xfff3F497B), Color(0xfff7EAAD1)],
      )),
      child: const Center(child: Text('search')),
    ));
  }
}
