<<<<<<< HEAD
import 'package:flutter/material.dart';
import './pages/login.dart';

void main() {
  runApp(new MaterialApp(
    home: LoginScreen(),
  ));
}
=======
=======
import 'package:flutter/material.dart';
import './view/login.dart';

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

>>>>>>> upstream/master
