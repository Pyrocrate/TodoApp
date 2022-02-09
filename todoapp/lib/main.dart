import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'todoCards.dart';

void main() => runApp(MaterialApp(home: todo()));

class todo extends StatefulWidget {
  const todo({Key? key}) : super(key: key);

  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<todo> {
  List<String> todoitems = ['Turn Off Alarm', 'Brush My Teeth', 'Take a Bath'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'ToDo App',
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 149, 221, 255),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: todoitems
              .map((item) => todoCards(
                  item: item,
                  delete: () {
                    SchedulerBinding.instance
                        ?.addPostFrameCallback((timeStamp) {
                      setState(() {
                        todoitems.remove(item);
                      });
                    });
                  }))
              .toList(),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (() => setState(() {
                  todoitems.clear();
                })),
            child: Icon(Icons.airplane_ticket)),
      ),
    );
  }
}
