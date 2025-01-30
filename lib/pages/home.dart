import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftly/components/add_todo.dart';
import 'package:swiftly/components/todo.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Swiftly'), backgroundColor: Colors.teal),
      body: TodoList(),
      floatingActionButton: AddTodo(),
    );
  }
}
