import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'pages/todoCards.dart';
import 'pages/todo.dart';

void main() => runApp(MaterialApp(
      initialRoute: 'root1',
      routes: {
        'root1': (context) => todo(),
      },
    ));
