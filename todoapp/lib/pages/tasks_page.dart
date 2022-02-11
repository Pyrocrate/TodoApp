import 'package:flutter/material.dart';

class tasksPage extends StatefulWidget {
  const tasksPage({Key? key}) : super(key: key);

  @override
  _tasksPageState createState() => _tasksPageState();
}

class _tasksPageState extends State<tasksPage> {
  List<Map> tasks = [
    {'icon': Icons.ice_skating, 'task': 'Go for Ice skating'},
    {'icon': Icons.bike_scooter, 'task': 'Service Motorcycle'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              child: ListTile(
                  leading: Icon(tasks[index]['icon']),
                  title: Text(tasks[index]['task'])),
            ),
          );
        },
      ),
    ));
  }
}
