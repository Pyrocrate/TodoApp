import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:todoapp/main.dart';
import 'package:todoapp/pages/expandedlist.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

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
          'Get ready to chill down the mountain \n on some crazy ass ski\'s.',
    },
    {
      'icon': Icons.motorcycle,
      'color': Colors.red,
      'title': 'Service Motorcycle',
      'subtitle': 'Clean and lube drive chain',
      'description': 'A clean bike indicates the love towards \n the machine',
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
            return expandedTileBuilder(
              task: tasks[index],
              delete: () {
                SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
                  setState(() {
                    print(tasks);
                    tasks.remove(tasks[index]);
                  });
                });
              },
            );
          },
        ),
        floatingActionButton: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'newTask');
            },
            style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.add), Text("Add Task")],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
