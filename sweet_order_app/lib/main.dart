import 'package:flutter/material.dart';
import 'dessert.dart';
import 'dessert_card.dart';

void main() => runApp(const MaterialApp(home: UserList()));

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Dessert> users = [
    Dessert(
        name: 'Honey Waffle',
        price: 30,
        image: 'assets/images/honey_waffle.jpg'),
    Dessert(
        name: 'Dark Brownie',
        price: 40,
        image: 'assets/images/dark_brownie.jpg'),
    Dessert(
        name: 'Fruit Pancake',
        price: 45,
        image: 'assets/images/fruit_pancake.jpg'),
  ];

  Widget dessertTemplate(Dessert user, Function() delete) {
    return DessertCard(
      dessert: user,
      delete: delete,
    );
  }

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
        body: Scrollbar(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return dessertTemplate(users[index], () {
                    setState(() {
                      users.removeAt(index);
                    });
                  });
                })));
  }
}
