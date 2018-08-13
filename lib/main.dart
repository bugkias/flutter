import 'package:flutter/material.dart';
import 'package:basic_flutter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
