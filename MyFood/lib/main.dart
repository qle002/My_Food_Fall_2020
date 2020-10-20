import './view/Login.dart';
import 'package:flutter/material.dart';
import './pages/mockfridge.dart';

void main() {
  runApp(MyFood());
}

class MyFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddRemoveListView(),
    );
  }
}
