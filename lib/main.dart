import 'package:flutter/material.dart';
import 'package:todo_flutter/screens/Taskscreen.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Taskscreen(),
    );
  }
}
