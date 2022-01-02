import 'package:flutter/material.dart';
import 'dessert.dart';

class DessertCard extends StatelessWidget {
  final Dessert dessert;
  final Function() delete;
  // ignore: use_key_in_widget_constructors
  const DessertCard({required this.dessert, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(8, 6, 8, 6),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(dessert.image),
                      width: 150,
                      height: 120,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 8),
                        Text(
                          dessert.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          dessert.price.toString() + ' ฿',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                TextButton.icon(
                    onPressed: delete,
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.pink,
                    ),
                    label: const Text(
                      'delete dessert',
                      style: TextStyle(color: Colors.pink),
                    )),
              ],
            )));
  }
}
