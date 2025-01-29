import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  final List<String> todos = const [
    'Buy milk',
    'Make the bed',
    'Do laundry',
    'Go to the gym'
  ];

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  late List<bool> _isSelectedList;

  @override
  void initState() {
    super.initState();
    _isSelectedList = List.filled(widget.todos.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: ListView.builder(
        itemCount: widget.todos.length,
        itemBuilder: (context, index) {
          bool isChecked = _isSelectedList[index];

          return Container(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: CheckboxListTile(
              title: Text(
                widget.todos[index],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  decoration: isChecked ? TextDecoration.lineThrough : null, // ✅ Strike-through if checked
                  color: isChecked ? Colors.grey : Colors.black, // ✅ Text color change
                ),
              ),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isSelectedList[index] = value ?? false;
                });
              },
              activeColor: Colors.green, // ✅ Checkbox color
              checkColor: Colors.white,
              controlAffinity: ListTileControlAffinity.leading, // ✅ Checkbox on the left
            ),
          );
        },
      ),
    );
  }
}
