import './Login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) :
        super(key: key);

  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Return to login"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLogin())
            );
          },
        ),
      ),
    );
  }
}