import 'package:flutter/material.dart';
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
          return Container(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ExpansionTileCard(
                leading:
                    Icon(tasks[index]['icon'], color: tasks[index]['color']),
                title: Text(tasks[index]['title']),
                subtitle: Text(
                  tasks[index]['subtitle'],
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                children: [
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(tasks[index]['description'],
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                          )),
                    ),
                  )
                ],
                // trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                //   Icon(Icons.mode, color: Colors.black),
                //   Icon(Icons.hourglass_empty, color: Colors.black),
                //   Icon(Icons.arrow_forward, color: Colors.black),
                // ]),
              ),
            ),
          );
        },
      ),
    ));
  }
}
