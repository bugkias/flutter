import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String fname = 'Nattanon';
  String lname = 'Mongkonkaha';
  String address = '''
  2/1 Saengchooto
  Muang
  Kanchanaburi
  71000
  ''';

  int myAge = 25;
  double height = 175.0;
  double base = 100.0;

  bool isAdmin = true;

  var description = 'Basic Flutter';

  Map userLevel = {'type': 'Admin', 'levelcode': 'ADM'}; // object
  Map<String, int> desc = {'tall': 120, 'weight': 60};

  List sex = ['male', 'female'];

  List<int> empAge = [10, 20, 30];

  List<Map<String, int>> types = [
    {'a': 10, 'b': 20},
    {'x': 10, 'y': 50}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: RaisedButton(
            onPressed: () {
              print('$fname $lname');
              print(address);

              double myArea = 0.5 * (base) * (height);
              print('${myArea}'); // แบบมีการประมวณผล

              print('$types'); // แบบมีการประมวณผล
            },
            color: Colors.redAccent,
            textColor: Colors.white,
            child: Text('Press me!')),
      ),
    );
  }
}
