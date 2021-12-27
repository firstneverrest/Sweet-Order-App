import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

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
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
        
      ),
      body: const Center(
        child: Text("Let's order some sweet!"),
      ),
      floatingActionButton: FloatingActionButton
        (
        child: const Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.pink[300],
      ),
    );
  }
}
