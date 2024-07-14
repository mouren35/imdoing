// lib/models/task.dart
class Task {
  final String title;
  final String duration;
  bool isDone;

  Task({
    required this.title,
    required this.duration,
    this.isDone = false,
  });
}
