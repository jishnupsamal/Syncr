import 'package:flutter/material.dart';
import 'package:swiftly/components/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiftly',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Swiftly'),
            backgroundColor: Colors.teal),
        body: TodoList(),
        floatingActionButton: IconButton.filled(
            icon: Icon(
              Icons.add,
              size: 40
            ),
            onPressed: () {
              print('Button Pressed');
            },
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Colors.teal)),
      ),
    )
    );
  }
}
