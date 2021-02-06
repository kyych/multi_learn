import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_learn/widgets/navigationBar.dart';
import 'dart:developer' as developer;

import 'package:multi_learn/widgets/peoplenearyou.dart';

class Dashboard extends StatefulWidget{
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    developer.log("Dashboard rebuild");
    return Scaffold(
      body:
          Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    HexColor("#3F497B"),
                    HexColor("#7EAAD1")
                  ],
                )),
          child: Column(
            verticalDirection: VerticalDirection.up,
            children: <Widget>[ //TODO: refactor to widget
             NavigationBar(),
              Align(
                alignment: Alignment.bottomCenter,
                child:
                PeopleNearYou(),

              ),
            ],
          )
          ),
    );
  }
}