import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:multi_learn/widgets/person_widget.dart';

class PeopleNearYou extends StatefulWidget {
  @override
  _PeopleNearYou createState() => _PeopleNearYou();
}

class _PeopleNearYou extends State<PeopleNearYou> {
  List<String> names = <String>[
    'Aby',
    'Aish',
    'Ayan',
    'Ben',
    'Bob',
    'Charlie',
    'Cook',
    'Carline'
  ];
  List<String> wantsToLearn = <String>[
    'java',
    'php',
    'math',
    'chinese',
    'linear algebra',
    'flask python',
    'russian',
    'ruby'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: HexColor("#8FB3D5"),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        height: (MediaQuery.of(context).size.height) * 0.77,
        width: (MediaQuery.of(context).size.width) * 0.84,
        child: Column(children: <Widget>[
          Text(
            'People near you',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 33,
              fontFamily: 'Roboto', //TODO: add custom font
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height: 50,
                      margin: EdgeInsets.all(2),
                      /*color: msgCount[index] >= 10 ? Colors.blue[400] :
                        msgCount[index] > 3 ? Colors.blue[100] : Colors.grey,*/
                      child: Center(
                        child: PersonWidget(
                            '${names[index]} (${wantsToLearn[index]})'), /*Text('${names[index]} (${wantsToLearn[index]})',
                              style: TextStyle(fontSize: 18),*/
                      ));
                }),
          )
        ]));
  }

// color: HexColor("#8FB3D5"),
}
