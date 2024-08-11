import 'package:flutter/material.dart';
import 'package:swiftly/widgets/TaskList.dart';
import 'package:swiftly/widgets/add_tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final name = "Jishnu Prasad Samal";
  static const tasks = ['Buy Milk', 'Complete Homework'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Swiftly'),
            ),
            body: const Column(children: [
              // AddTasks(), TaskListView()
              Expanded(child: AddTasks()),
              Expanded(child: TaskListView())
            ])));
  }
}
