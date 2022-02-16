import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

class newTask extends StatelessWidget {
  const newTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Enter Task",
              suffixIcon: Icon(Icons.add),
            ),
          )
        ]),
      ),
    );
  }
}
