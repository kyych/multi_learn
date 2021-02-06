import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class PeopleNearYou extends StatefulWidget{
  @override
  _PeopleNearYou createState() => _PeopleNearYou();
}

class _PeopleNearYou extends State<PeopleNearYou>{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: HexColor("#8FB3D5"),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      height: (MediaQuery.of(context).size.height)*0.77,
      width: (MediaQuery.of(context).size.width)*0.84,
      // color: HexColor("#8FB3D5"),
    );
  }
}