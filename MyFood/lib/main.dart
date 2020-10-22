import 'package:MyFoodLogin/theme/approutes.dart';
import 'package:firebase_core/firebase_core.dart';

import './view/Login.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import './pages/mockfridge.dart';
=======
// import 'package:firebase_core/firebase_core.dart';
>>>>>>> f8492442afb1589f50559d4f216aba1daa8ff7da

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyFood());
}

class MyFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      home: AddRemoveListView(),
=======
      home: LoginScreen(),
      routes: Routes.define(),
>>>>>>> f8492442afb1589f50559d4f216aba1daa8ff7da
    );
  }
}
