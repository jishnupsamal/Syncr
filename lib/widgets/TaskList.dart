import 'package:flutter/material.dart';

class TaskListView extends StatefulWidget {
  const TaskListView({super.key});

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  static const tasks = ['Buy Milk', 'Complete Homework'];
  final List<bool> _isChecked = List<bool>.filled(tasks.length, false);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(tasks[i]),
          leading: Checkbox(
            value: _isChecked[i],
            onChanged: (bool? value) {
              setState(() {
                _isChecked[i] = value ?? false;
              });
            },
          ),
        );
      },
    );
  }
}
