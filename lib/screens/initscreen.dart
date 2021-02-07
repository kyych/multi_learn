import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_learn/screens/dashboard.dart';
import 'package:multi_learn/screens/loginscreen.dart';

class InitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseUser>(
        future: FirebaseAuth.instance.currentUser(),
        builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
          if (snapshot.hasData) {
            FirebaseUser user = snapshot.data; // this is your user instance
            /// is because there is user already logged
            return Dashboard();
          }

          /// other way there is no user logged.
          return LoginScreen();
        });
  }
}
