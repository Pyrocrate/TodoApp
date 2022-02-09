import 'dart:ui';

import 'package:flutter/material.dart';

class todoCards extends StatelessWidget {
  final String item;
  final Function() delete;
  todoCards({required this.item, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            item,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.alt_route_sharp, color: Colors.green),
                  label: const Text(
                    "Mark Complete",
                    style: TextStyle(color: Colors.green),
                  )),
              TextButton.icon(
                  onPressed: (() => delete()),
                  icon: Icon(Icons.delete, color: Colors.red),
                  label: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
