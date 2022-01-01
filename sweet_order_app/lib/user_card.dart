import 'package:flutter/material.dart';
import 'user.dart';

class UserCard extends StatelessWidget {
  final User user;
  // ignore: use_key_in_widget_constructors
  const UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(8, 6, 8, 6),
      child: ListTile(
        title: Text(
          user.name,
          style: const TextStyle(fontSize: 18),
        ),
        subtitle: Text(user.email),
      ),
    );
  }
}
