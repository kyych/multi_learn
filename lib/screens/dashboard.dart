import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Dashboard extends StatefulWidget{
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
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
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor("#8FB3D5"),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  height: (MediaQuery.of(context).size.height)*0.77,
                  width: (MediaQuery.of(context).size.width)*0.84,
                  // color: HexColor("#8FB3D5"),
                ),
              ),
            ],
          )
          ),
    );
  }
}