import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_learn/widgets/peoplenearyou.dart';

class DashBoardScreen extends StatefulWidget {
  _DashBoardScreen createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {
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
            child: Column(
              children: [
                Align(
                  child: Material(
                    elevation: 4.0,
                    shape: CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.transparent,
                    child: Ink.image(
                      image: AssetImage('assets/images/hPerson.jpg'),
                      fit: BoxFit.cover,
                      width: 79.0,
                      height: 79.0,
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: PeopleNearYou(),
                ),
              ],
            )));
  }
}
