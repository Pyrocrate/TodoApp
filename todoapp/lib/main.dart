import 'package:flutter/material.dart';
import 'package:todoapp/pages/tasks_page.dart';
import 'package:todoapp/pages/newtask.dart';

void main() => runApp(todoApp());

class todoApp extends StatelessWidget {
  const todoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => tasksPage(),
          'newTask': (context) => newTask(),
        });
  }
}
