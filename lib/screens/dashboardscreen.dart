import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_learn/widgets/peoplenearyou.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreen createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [HexColor('#3F497B'), HexColor('#7EAAD1')],
            )),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    elevation: 4.0,
                    shape: const CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.transparent,
                    child: Ink.image(
                      image: const AssetImage('assets/images/hPerson.jpg'),
                      fit: BoxFit.cover,
                      width: 79.0,
                      height: 79.0,
                    ),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: PeopleNearYou(),
                ),
              ],
            )));
  }
}
