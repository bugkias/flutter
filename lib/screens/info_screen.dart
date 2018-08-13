import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Card(child: Image(image: AssetImage('assets/images/melbourne.jpg'))),
        Card(
            child: Image.network(
          'https://cdn.pixabay.com/photo/2018/07/23/06/10/person-3556090_960_720.jpg',
        )),
      ],
    );
  }
}
