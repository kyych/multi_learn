import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_learn/screens/profilescreen.dart';
import 'package:multi_learn/widgets/navigationBar.dart';
import 'dart:developer' as developer;

import 'package:multi_learn/widgets/peoplenearyou.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    developer.log("Dashboard rebuild");
    return Scaffold(
      body: Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [HexColor("#3F497B"), HexColor("#7EAAD1")],
          )),
          child: Column(
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              //TODO: refactor to widgets here
              NavigationBar(),
              Align(
                alignment: Alignment.bottomCenter,
                child: PeopleNearYou(),
              ),
              // Align( //TODO: ADD location, messages
              //   child: Text('7 new messages\nLocation: Warsaw'),
              //   alignment: Alignment.topLeft,
              // ),

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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                      },
                    ),
                  ),
                ),
                alignment: Alignment.topRight,
              ),
            ],
          )),
    );
  }

  void _someMethod() {
    //TODO: remove this method from here...
  }
}
