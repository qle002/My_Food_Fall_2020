import 'package:flutter/material.dart';
import './register.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) :
  super(key: key);

  @override  
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Register"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen())
             );
          } ,
        ),
      ),
    );
  }
}