import 'package:flutter/material.dart';
import 'user.dart';
import 'user_card.dart';

void main() => runApp(const MaterialApp(home: UserList()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
        // body: Center(
        //   child: TextButton.icon(
        //     icon: const Icon(
        //       Icons.fastfood,
        //       size: 50,
        //       color: Colors.white,
        //     ),
        //     label: const Text(
        //       'Order',
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //         fontFamily: 'Kanit',
        //         color: Colors.white
        //       ),
        //     ),
        //     onPressed: () {},
        //     style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
        //     ),
        //   )
        // ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue[300],
                padding: const EdgeInsets.all(20),
                child: const Text('Container1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.pink[300],
                padding: const EdgeInsets.all(20),
                child: const Text('Container2'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.orange[300],
                padding: const EdgeInsets.all(20),
                child: const Text('Container3'),
              ),
            )
          ],
        ));
  }
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User> users = [
    User(name: 'Leanne Graham', email: 'Sincere@gmail.com'),
    User(name: 'Ervin Howell', email: 'Shanna@hotmail.com'),
    User(name: 'Vincent Skywalker', email: 'Vincent@hotmail.com'),
  ];

  Widget userTemplate(User user) {
    return UserCard(user: user);
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
        body: Center(
            child: Column(
          children: users.map((user) {
            return userTemplate(user);
          }).toList(),
        )));
  }
}
