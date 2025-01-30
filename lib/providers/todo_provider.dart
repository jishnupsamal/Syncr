import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swiftly/models/todo_model.dart';

part 'todo_provider.g.dart';

List<Todo> allTodos = [
  Todo(id: 1, title: 'Buy milk', isCompleted: false),
  Todo(id: 2,title: 'Make the bed', isCompleted: false),
  Todo(id: 3,title: 'Do laundry', isCompleted: false),
  Todo(id: 4,title: 'Go to the gym', isCompleted: false), 
];

@riverpod
class TodoNotifier extends _$TodoNotifier {
  @override
  List<Todo> build() {
    return allTodos;
  }

  void addTodo(Todo todo) {
    state = [...state, todo];
  }

  void completedTodo(Todo todo) {
    state = [
      for (final t in state)
        if (t.id == todo.id) t.copyWith(isCompleted: !t.isCompleted) else t,
    ];
  }

  void removeTodo(Todo todo) {
    state = state.where((t) => t.id != todo.id).toList();
}}