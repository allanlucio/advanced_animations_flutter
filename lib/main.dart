import 'package:advanced_animations/screens/home/home_screen.dart';
import 'package:advanced_animations/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


