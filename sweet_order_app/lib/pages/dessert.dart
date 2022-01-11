import 'package:flutter/material.dart';

class Dessert extends StatefulWidget {
  const Dessert({Key? key}) : super(key: key);

  @override
  _DessertState createState() => _DessertState();
}

class _DessertState extends State<Dessert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sweet Order App',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kanit',
              color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
    );
  }
}
