import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100.0,
              color: Colors.redAccent,
            ),
            Container(
              height: 200.0,
              color: Colors.amberAccent,
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new Text('Object One', textAlign: TextAlign.center),
                ),
                new Expanded(
                  child: new Container(
                    height: 100.0,
                    color: Colors.blue,
                    child: Text('Test'),
                  ),
                ),
                new Expanded(
                  child: new FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: const FlutterLogo(),
                  ),
                ),
              ],
            ),
            Container(
              child: Image(image: AssetImage('assets/images/melbourne.jpg')),
            ),
          ],
        )
      ],
    );
  }
}
