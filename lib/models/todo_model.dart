class Todo {
  Todo({
    this.id,
    required this.title,
    required this.isCompleted,
  });

  final int? id;
  final String title;
  final bool isCompleted;

  Todo copyWith({int? id, String? title, bool? isCompleted}) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}