import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftly/models/todo_model.dart';
import 'package:swiftly/providers/todo_provider.dart';

class AddTodo extends ConsumerStatefulWidget {
  const AddTodo({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddTodoState();
}

class _AddTodoState extends ConsumerState<AddTodo> {
  final TextEditingController _controller = TextEditingController();
  void _handleSubmit() {
    final allTodos = ref.read(todoNotifierProvider);
    if (_controller.text.isNotEmpty) {
      ref.read(todoNotifierProvider.notifier).addTodo(Todo(
          id: allTodos.length + 1,
          title: _controller.text,
          isCompleted: false));
      _controller.clear();
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton.filled(
        icon: Icon(Icons.add, size: 40),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            content: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Add a new Todo',
                floatingLabelStyle: TextStyle(
                  color: Colors.teal,
                ),
              ),
              onSubmitted: (String value) => _handleSubmit(),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.teal,
                ),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: _handleSubmit,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.teal,
                ),
                child: const Text('Add'),
              ),
            ],
          ),
        ),
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.teal)),
      ),
    );
  }
}
