import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/dessert');
              },
              icon: Icon(Icons.food_bank),
              label: Text('Dessert')),
        ]),
      ),
    );
  }
}
