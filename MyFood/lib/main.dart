import 'package:MyFoodLogin/pages/mockLogin.dart';
import 'package:MyFoodLogin/theme/approutes.dart';
import 'package:MyFoodLogin/view/MainPage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:MyFoodLogin/view/Login.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyFood());
}

class MyFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: Routes.define(),
    );
  }
}
