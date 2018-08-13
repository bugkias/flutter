import 'package:flutter/material.dart';
import 'package:basic_flutter/screens/info_screen.dart';
import 'package:basic_flutter/screens/payment_screen.dart';
import 'package:basic_flutter/screens/follow_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget appBar = AppBar(
    title: Text('Flutter App'),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.home), onPressed: null),
      IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
    ],
  );

  Widget floatingAction =
      FloatingActionButton(onPressed: () {}, child: Icon(Icons.edit));

  int currentIndex = 0;
  List screens = [InfoScreen(), PaymentScreen(), FollowScreen()];

  @override
  Widget build(BuildContext context) {
    Widget bottomNavBar = BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('หน้าแรก')),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), title: Text('การชำระ')),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), title: Text('การติดตาม')),
        ]);
    return Scaffold(
      appBar: appBar,
      body: screens[currentIndex],
      floatingActionButton: floatingAction,
      bottomNavigationBar: bottomNavBar,
    );
  }
}
