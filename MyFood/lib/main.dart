import 'package:flutter/material.dart';
import 'view/Login.dart';

void main() {
  runApp(MyFood());
}

class MyFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
