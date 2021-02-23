import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_learn/models/learn_user.dart';
import 'package:multi_learn/screens/loginscreen.dart';
import 'package:multi_learn/screens/mainscreen.dart';

class InitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
        future: Future.value(FirebaseAuth.instance.currentUser),
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          if (snapshot.hasData) {
            // User user = snapshot.data;
            LearnUser(user: snapshot.data);

            /// is because there is user already logged
            return MainScreen();
          }

          /// other way there is no user logged.
          return LoginScreen();
        });
  }
}
