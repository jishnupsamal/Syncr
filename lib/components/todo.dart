import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftly/providers/todo_provider.dart';

class TodoList extends ConsumerStatefulWidget {
  const TodoList({super.key});

  @override
  ConsumerState<TodoList> createState() => _TodoListState();
}

class _TodoListState extends ConsumerState<TodoList> {
  @override
  Widget build(BuildContext context) {
    final allTodos = ref.watch(todoNotifierProvider);
    return Scaffold(
      body: ListView.builder(
        itemCount: allTodos.length,
        itemBuilder: (context, index) {
          bool isChecked = allTodos[index].isCompleted;
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: CheckboxListTile(
              title: Text(
                allTodos[index].title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  decoration: isChecked ? TextDecoration.lineThrough : null,
                  color: isChecked ? Colors.grey : Colors.black,
                ),
              ),
              value: isChecked,
              onChanged: (bool? value) {
                if (value != null) {
                  ref
                      .read(todoNotifierProvider.notifier)
                      .completedTodo(allTodos[index]);
                }
              },
              activeColor: Colors.teal, // ✅ Checkbox color
              checkColor: Colors.white,
              controlAffinity:
                  ListTileControlAffinity.leading, // ✅ Checkbox on the left
            ),
          );
        },
      ),
    );
  }
}
