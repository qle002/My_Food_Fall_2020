import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future <void> userCreate(String email) async{
  CollectionReference user = FirebaseFirestore.instance.collection('Users'); //create user collection

  FirebaseAuth authenticate = FirebaseAuth.instance;
  String uid = authenticate.currentUser.uid.toString(); //gets current registered users ID for collection

  user.add({
    'email' : email, //user properties
    'uid': uid
  });

}
