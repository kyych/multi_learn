import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_learn/screens/initscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'MultiLearn',
      debugShowCheckedModeBanner: true,
      home: InitScreen(),
    );
  }
}
