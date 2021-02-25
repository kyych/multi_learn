import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LearnUser {
  // final String uid;

  final User user; //FirebaseUser
  //TODO: IMAGE FIELD
  // String name, surname;
  // String school, technologies;

  LearnUser({required this.user});

  void addData(String data) {
    FirebaseFirestore.instance
        .collection(user.uid)
        .add({'testText': 'ARKAAAA GDYNIAAA HEHEHEHE ŚWINIA'});
  }
}
