import 'package:firebase_auth/firebase_auth.dart';

class LearnUser {
  // final String uid;

  final User user; //FirebaseUser
  //TODO: IMAGE FIELD
  String name, surname;
  String school, technologies;

  LearnUser({this.user});
}
