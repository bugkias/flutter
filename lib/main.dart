import 'package:flutter/material.dart';
import 'package:basic_flutter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'CSChatThai',
          scaffoldBackgroundColor: Colors.white70,
          primaryColor: Colors.redAccent,
          accentColor: Colors.redAccent),
      title: 'Basic Flutter App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
