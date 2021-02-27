import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_learn/models/learn_user.dart';
import 'package:multi_learn/screens/loginscreen.dart';
import 'package:multi_learn/screens/mainscreen.dart';

class InitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser != null) {
      LearnUser(user: FirebaseAuth.instance.currentUser!);
      return MainScreen();
    } else {
      return LoginScreen();
    }
  }
}
