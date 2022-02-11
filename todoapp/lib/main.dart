import 'package:flutter/material.dart';
import 'package:todoapp/pages/tasks_page.dart';

void main() => runApp(MaterialApp(
      home: tasksPage(),
    ));

class todoApp extends StatelessWidget {
  const todoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'home', routes: {
      'home': (context) => tasksPage(),
    });
  }
}
