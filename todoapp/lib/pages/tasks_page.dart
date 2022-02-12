import 'package:flutter/material.dart';
import 'package:todoapp/classes/expandedlist.dart';

class tasksPage extends StatefulWidget {
  const tasksPage({Key? key}) : super(key: key);

  @override
  _tasksPageState createState() => _tasksPageState();
}

class _tasksPageState extends State<tasksPage> {
  List<Map> tasks = [
    {
      'icon': Icons.ice_skating,
      'color': Colors.blue,
      'title': 'Go for Ice skating',
      'subtitle': 'Pack up Ice skating gear',
      'description':
          '* Get ready to chill down the mountain \n on some crazy ass ski\'s',
    },
    {
      'icon': Icons.motorcycle,
      'color': Colors.red,
      'title': 'Service Motorcycle',
      'subtitle': 'Clean and lube drive chain',
      'description': '* A clean bike indicates the love towards \n the machine',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return expandedListBuilder(tasks: tasks, index: index);
        },
      ),
    ));
  }
}
